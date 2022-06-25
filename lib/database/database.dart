import 'dart:io';

import 'package:moor/moor.dart';

// These imports are only needed to open the database
import 'package:moor_ffi/moor_ffi.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'database.g.dart';

class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get icon => text()();
  TextColumn get name => text()();
  TextColumn get description => text()();
  TextColumn get equipment => text()();
}

class Workouts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
  BlobColumn get exercises => blob()();
}

class ExerciseData extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get sets => integer()();
  IntColumn get reps => integer()();
  IntColumn get currentWeight => integer()();
  IntColumn get rest => integer()();
  BlobColumn get weightHistory => blob()();
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file);
  });
}

// this annotation tells moor to prepare a database class that uses both of the
// tables we just defined. We'll see how to use that database class in a moment.
@UseMoor(tables: [Exercises, Workouts, ExerciseData],
        daos: [ExerciseDao])
class MyDatabase extends _$MyDatabase {
  // we tell the database where to store the data with this constructor
  MyDatabase() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition. Migrations
  // are covered later in this readme.
  @override
  int get schemaVersion => 1;
}

@UseDao(tables: [Exercises])
class ExerciseDao extends DatabaseAccessor<MyDatabase>
    with _$ExerciseDaoMixin {
      final MyDatabase db;
    
    ExerciseDao(this.db) : super(db);

    Future<List<Exercise>> getAllExercises() => select(exercises).get();

    Future insertMeasurement(Exercise e) => into(exercises).insert(e);

    Future<int> dropTable() => delete(exercises).go();
  } 
