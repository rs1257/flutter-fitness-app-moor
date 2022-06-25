// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Exercise extends DataClass implements Insertable<Exercise> {
  final int id;
  final String icon;
  final String name;
  final String description;
  final String equipment;
  Exercise(
      {@required this.id,
      @required this.icon,
      @required this.name,
      @required this.description,
      @required this.equipment});
  factory Exercise.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Exercise(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      icon: stringType.mapFromDatabaseResponse(data['${effectivePrefix}icon']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      equipment: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}equipment']),
    );
  }
  factory Exercise.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Exercise(
      id: serializer.fromJson<int>(json['id']),
      icon: serializer.fromJson<String>(json['icon']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      equipment: serializer.fromJson<String>(json['equipment']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'icon': serializer.toJson<String>(icon),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'equipment': serializer.toJson<String>(equipment),
    };
  }

  @override
  ExercisesCompanion createCompanion(bool nullToAbsent) {
    return ExercisesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      icon: icon == null && nullToAbsent ? const Value.absent() : Value(icon),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      equipment: equipment == null && nullToAbsent
          ? const Value.absent()
          : Value(equipment),
    );
  }

  Exercise copyWith(
          {int id,
          String icon,
          String name,
          String description,
          String equipment}) =>
      Exercise(
        id: id ?? this.id,
        icon: icon ?? this.icon,
        name: name ?? this.name,
        description: description ?? this.description,
        equipment: equipment ?? this.equipment,
      );
  @override
  String toString() {
    return (StringBuffer('Exercise(')
          ..write('id: $id, ')
          ..write('icon: $icon, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('equipment: $equipment')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          icon.hashCode,
          $mrjc(name.hashCode,
              $mrjc(description.hashCode, equipment.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Exercise &&
          other.id == this.id &&
          other.icon == this.icon &&
          other.name == this.name &&
          other.description == this.description &&
          other.equipment == this.equipment);
}

class ExercisesCompanion extends UpdateCompanion<Exercise> {
  final Value<int> id;
  final Value<String> icon;
  final Value<String> name;
  final Value<String> description;
  final Value<String> equipment;
  const ExercisesCompanion({
    this.id = const Value.absent(),
    this.icon = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.equipment = const Value.absent(),
  });
  ExercisesCompanion.insert({
    this.id = const Value.absent(),
    @required String icon,
    @required String name,
    @required String description,
    @required String equipment,
  })  : icon = Value(icon),
        name = Value(name),
        description = Value(description),
        equipment = Value(equipment);
  ExercisesCompanion copyWith(
      {Value<int> id,
      Value<String> icon,
      Value<String> name,
      Value<String> description,
      Value<String> equipment}) {
    return ExercisesCompanion(
      id: id ?? this.id,
      icon: icon ?? this.icon,
      name: name ?? this.name,
      description: description ?? this.description,
      equipment: equipment ?? this.equipment,
    );
  }
}

class $ExercisesTable extends Exercises
    with TableInfo<$ExercisesTable, Exercise> {
  final GeneratedDatabase _db;
  final String _alias;
  $ExercisesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _iconMeta = const VerificationMeta('icon');
  GeneratedTextColumn _icon;
  @override
  GeneratedTextColumn get icon => _icon ??= _constructIcon();
  GeneratedTextColumn _constructIcon() {
    return GeneratedTextColumn(
      'icon',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _equipmentMeta = const VerificationMeta('equipment');
  GeneratedTextColumn _equipment;
  @override
  GeneratedTextColumn get equipment => _equipment ??= _constructEquipment();
  GeneratedTextColumn _constructEquipment() {
    return GeneratedTextColumn(
      'equipment',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, icon, name, description, equipment];
  @override
  $ExercisesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'exercises';
  @override
  final String actualTableName = 'exercises';
  @override
  VerificationContext validateIntegrity(ExercisesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.icon.present) {
      context.handle(
          _iconMeta, icon.isAcceptableValue(d.icon.value, _iconMeta));
    } else if (isInserting) {
      context.missing(_iconMeta);
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.equipment.present) {
      context.handle(_equipmentMeta,
          equipment.isAcceptableValue(d.equipment.value, _equipmentMeta));
    } else if (isInserting) {
      context.missing(_equipmentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Exercise map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Exercise.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ExercisesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.icon.present) {
      map['icon'] = Variable<String, StringType>(d.icon.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.equipment.present) {
      map['equipment'] = Variable<String, StringType>(d.equipment.value);
    }
    return map;
  }

  @override
  $ExercisesTable createAlias(String alias) {
    return $ExercisesTable(_db, alias);
  }
}

class Workout extends DataClass implements Insertable<Workout> {
  final int id;
  final String name;
  final Uint8List exercises;
  Workout({@required this.id, @required this.name, @required this.exercises});
  factory Workout.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return Workout(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      exercises: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}exercises']),
    );
  }
  factory Workout.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Workout(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      exercises: serializer.fromJson<Uint8List>(json['exercises']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'exercises': serializer.toJson<Uint8List>(exercises),
    };
  }

  @override
  WorkoutsCompanion createCompanion(bool nullToAbsent) {
    return WorkoutsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      exercises: exercises == null && nullToAbsent
          ? const Value.absent()
          : Value(exercises),
    );
  }

  Workout copyWith({int id, String name, Uint8List exercises}) => Workout(
        id: id ?? this.id,
        name: name ?? this.name,
        exercises: exercises ?? this.exercises,
      );
  @override
  String toString() {
    return (StringBuffer('Workout(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('exercises: $exercises')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, exercises.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Workout &&
          other.id == this.id &&
          other.name == this.name &&
          other.exercises == this.exercises);
}

class WorkoutsCompanion extends UpdateCompanion<Workout> {
  final Value<int> id;
  final Value<String> name;
  final Value<Uint8List> exercises;
  const WorkoutsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.exercises = const Value.absent(),
  });
  WorkoutsCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    @required Uint8List exercises,
  })  : name = Value(name),
        exercises = Value(exercises);
  WorkoutsCompanion copyWith(
      {Value<int> id, Value<String> name, Value<Uint8List> exercises}) {
    return WorkoutsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      exercises: exercises ?? this.exercises,
    );
  }
}

class $WorkoutsTable extends Workouts with TableInfo<$WorkoutsTable, Workout> {
  final GeneratedDatabase _db;
  final String _alias;
  $WorkoutsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn(
      'name',
      $tableName,
      false,
    );
  }

  final VerificationMeta _exercisesMeta = const VerificationMeta('exercises');
  GeneratedBlobColumn _exercises;
  @override
  GeneratedBlobColumn get exercises => _exercises ??= _constructExercises();
  GeneratedBlobColumn _constructExercises() {
    return GeneratedBlobColumn(
      'exercises',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, exercises];
  @override
  $WorkoutsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'workouts';
  @override
  final String actualTableName = 'workouts';
  @override
  VerificationContext validateIntegrity(WorkoutsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.exercises.present) {
      context.handle(_exercisesMeta,
          exercises.isAcceptableValue(d.exercises.value, _exercisesMeta));
    } else if (isInserting) {
      context.missing(_exercisesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Workout map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Workout.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(WorkoutsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.exercises.present) {
      map['exercises'] = Variable<Uint8List, BlobType>(d.exercises.value);
    }
    return map;
  }

  @override
  $WorkoutsTable createAlias(String alias) {
    return $WorkoutsTable(_db, alias);
  }
}

class ExerciseDataData extends DataClass
    implements Insertable<ExerciseDataData> {
  final int id;
  final int sets;
  final int reps;
  final int currentWeight;
  final int rest;
  final Uint8List weightHistory;
  ExerciseDataData(
      {@required this.id,
      @required this.sets,
      @required this.reps,
      @required this.currentWeight,
      @required this.rest,
      @required this.weightHistory});
  factory ExerciseDataData.fromData(
      Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final uint8ListType = db.typeSystem.forDartType<Uint8List>();
    return ExerciseDataData(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      sets: intType.mapFromDatabaseResponse(data['${effectivePrefix}sets']),
      reps: intType.mapFromDatabaseResponse(data['${effectivePrefix}reps']),
      currentWeight: intType
          .mapFromDatabaseResponse(data['${effectivePrefix}current_weight']),
      rest: intType.mapFromDatabaseResponse(data['${effectivePrefix}rest']),
      weightHistory: uint8ListType
          .mapFromDatabaseResponse(data['${effectivePrefix}weight_history']),
    );
  }
  factory ExerciseDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExerciseDataData(
      id: serializer.fromJson<int>(json['id']),
      sets: serializer.fromJson<int>(json['sets']),
      reps: serializer.fromJson<int>(json['reps']),
      currentWeight: serializer.fromJson<int>(json['currentWeight']),
      rest: serializer.fromJson<int>(json['rest']),
      weightHistory: serializer.fromJson<Uint8List>(json['weightHistory']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'sets': serializer.toJson<int>(sets),
      'reps': serializer.toJson<int>(reps),
      'currentWeight': serializer.toJson<int>(currentWeight),
      'rest': serializer.toJson<int>(rest),
      'weightHistory': serializer.toJson<Uint8List>(weightHistory),
    };
  }

  @override
  ExerciseDataCompanion createCompanion(bool nullToAbsent) {
    return ExerciseDataCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      sets: sets == null && nullToAbsent ? const Value.absent() : Value(sets),
      reps: reps == null && nullToAbsent ? const Value.absent() : Value(reps),
      currentWeight: currentWeight == null && nullToAbsent
          ? const Value.absent()
          : Value(currentWeight),
      rest: rest == null && nullToAbsent ? const Value.absent() : Value(rest),
      weightHistory: weightHistory == null && nullToAbsent
          ? const Value.absent()
          : Value(weightHistory),
    );
  }

  ExerciseDataData copyWith(
          {int id,
          int sets,
          int reps,
          int currentWeight,
          int rest,
          Uint8List weightHistory}) =>
      ExerciseDataData(
        id: id ?? this.id,
        sets: sets ?? this.sets,
        reps: reps ?? this.reps,
        currentWeight: currentWeight ?? this.currentWeight,
        rest: rest ?? this.rest,
        weightHistory: weightHistory ?? this.weightHistory,
      );
  @override
  String toString() {
    return (StringBuffer('ExerciseDataData(')
          ..write('id: $id, ')
          ..write('sets: $sets, ')
          ..write('reps: $reps, ')
          ..write('currentWeight: $currentWeight, ')
          ..write('rest: $rest, ')
          ..write('weightHistory: $weightHistory')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          sets.hashCode,
          $mrjc(
              reps.hashCode,
              $mrjc(currentWeight.hashCode,
                  $mrjc(rest.hashCode, weightHistory.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is ExerciseDataData &&
          other.id == this.id &&
          other.sets == this.sets &&
          other.reps == this.reps &&
          other.currentWeight == this.currentWeight &&
          other.rest == this.rest &&
          other.weightHistory == this.weightHistory);
}

class ExerciseDataCompanion extends UpdateCompanion<ExerciseDataData> {
  final Value<int> id;
  final Value<int> sets;
  final Value<int> reps;
  final Value<int> currentWeight;
  final Value<int> rest;
  final Value<Uint8List> weightHistory;
  const ExerciseDataCompanion({
    this.id = const Value.absent(),
    this.sets = const Value.absent(),
    this.reps = const Value.absent(),
    this.currentWeight = const Value.absent(),
    this.rest = const Value.absent(),
    this.weightHistory = const Value.absent(),
  });
  ExerciseDataCompanion.insert({
    this.id = const Value.absent(),
    @required int sets,
    @required int reps,
    @required int currentWeight,
    @required int rest,
    @required Uint8List weightHistory,
  })  : sets = Value(sets),
        reps = Value(reps),
        currentWeight = Value(currentWeight),
        rest = Value(rest),
        weightHistory = Value(weightHistory);
  ExerciseDataCompanion copyWith(
      {Value<int> id,
      Value<int> sets,
      Value<int> reps,
      Value<int> currentWeight,
      Value<int> rest,
      Value<Uint8List> weightHistory}) {
    return ExerciseDataCompanion(
      id: id ?? this.id,
      sets: sets ?? this.sets,
      reps: reps ?? this.reps,
      currentWeight: currentWeight ?? this.currentWeight,
      rest: rest ?? this.rest,
      weightHistory: weightHistory ?? this.weightHistory,
    );
  }
}

class $ExerciseDataTable extends ExerciseData
    with TableInfo<$ExerciseDataTable, ExerciseDataData> {
  final GeneratedDatabase _db;
  final String _alias;
  $ExerciseDataTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _setsMeta = const VerificationMeta('sets');
  GeneratedIntColumn _sets;
  @override
  GeneratedIntColumn get sets => _sets ??= _constructSets();
  GeneratedIntColumn _constructSets() {
    return GeneratedIntColumn(
      'sets',
      $tableName,
      false,
    );
  }

  final VerificationMeta _repsMeta = const VerificationMeta('reps');
  GeneratedIntColumn _reps;
  @override
  GeneratedIntColumn get reps => _reps ??= _constructReps();
  GeneratedIntColumn _constructReps() {
    return GeneratedIntColumn(
      'reps',
      $tableName,
      false,
    );
  }

  final VerificationMeta _currentWeightMeta =
      const VerificationMeta('currentWeight');
  GeneratedIntColumn _currentWeight;
  @override
  GeneratedIntColumn get currentWeight =>
      _currentWeight ??= _constructCurrentWeight();
  GeneratedIntColumn _constructCurrentWeight() {
    return GeneratedIntColumn(
      'current_weight',
      $tableName,
      false,
    );
  }

  final VerificationMeta _restMeta = const VerificationMeta('rest');
  GeneratedIntColumn _rest;
  @override
  GeneratedIntColumn get rest => _rest ??= _constructRest();
  GeneratedIntColumn _constructRest() {
    return GeneratedIntColumn(
      'rest',
      $tableName,
      false,
    );
  }

  final VerificationMeta _weightHistoryMeta =
      const VerificationMeta('weightHistory');
  GeneratedBlobColumn _weightHistory;
  @override
  GeneratedBlobColumn get weightHistory =>
      _weightHistory ??= _constructWeightHistory();
  GeneratedBlobColumn _constructWeightHistory() {
    return GeneratedBlobColumn(
      'weight_history',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, sets, reps, currentWeight, rest, weightHistory];
  @override
  $ExerciseDataTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'exercise_data';
  @override
  final String actualTableName = 'exercise_data';
  @override
  VerificationContext validateIntegrity(ExerciseDataCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.sets.present) {
      context.handle(
          _setsMeta, sets.isAcceptableValue(d.sets.value, _setsMeta));
    } else if (isInserting) {
      context.missing(_setsMeta);
    }
    if (d.reps.present) {
      context.handle(
          _repsMeta, reps.isAcceptableValue(d.reps.value, _repsMeta));
    } else if (isInserting) {
      context.missing(_repsMeta);
    }
    if (d.currentWeight.present) {
      context.handle(
          _currentWeightMeta,
          currentWeight.isAcceptableValue(
              d.currentWeight.value, _currentWeightMeta));
    } else if (isInserting) {
      context.missing(_currentWeightMeta);
    }
    if (d.rest.present) {
      context.handle(
          _restMeta, rest.isAcceptableValue(d.rest.value, _restMeta));
    } else if (isInserting) {
      context.missing(_restMeta);
    }
    if (d.weightHistory.present) {
      context.handle(
          _weightHistoryMeta,
          weightHistory.isAcceptableValue(
              d.weightHistory.value, _weightHistoryMeta));
    } else if (isInserting) {
      context.missing(_weightHistoryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ExerciseDataData map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ExerciseDataData.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ExerciseDataCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.sets.present) {
      map['sets'] = Variable<int, IntType>(d.sets.value);
    }
    if (d.reps.present) {
      map['reps'] = Variable<int, IntType>(d.reps.value);
    }
    if (d.currentWeight.present) {
      map['current_weight'] = Variable<int, IntType>(d.currentWeight.value);
    }
    if (d.rest.present) {
      map['rest'] = Variable<int, IntType>(d.rest.value);
    }
    if (d.weightHistory.present) {
      map['weight_history'] =
          Variable<Uint8List, BlobType>(d.weightHistory.value);
    }
    return map;
  }

  @override
  $ExerciseDataTable createAlias(String alias) {
    return $ExerciseDataTable(_db, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ExercisesTable _exercises;
  $ExercisesTable get exercises => _exercises ??= $ExercisesTable(this);
  $WorkoutsTable _workouts;
  $WorkoutsTable get workouts => _workouts ??= $WorkoutsTable(this);
  $ExerciseDataTable _exerciseData;
  $ExerciseDataTable get exerciseData =>
      _exerciseData ??= $ExerciseDataTable(this);
  ExerciseDao _exerciseDao;
  ExerciseDao get exerciseDao =>
      _exerciseDao ??= ExerciseDao(this as MyDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [exercises, workouts, exerciseData];
}

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ExerciseDaoMixin on DatabaseAccessor<MyDatabase> {
  $ExercisesTable get exercises => db.exercises;
}
