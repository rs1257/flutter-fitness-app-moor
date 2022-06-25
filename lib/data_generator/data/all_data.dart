import 'dart:convert';

import '../entries/database_entry.dart';
import '../entries/exercise_entry.dart';
import '../entries/exercise_equipment.dart';
import '../entries/exercise_type.dart';
import '../entries/validation_type.dart';

class AllData {
  static List<DatabaseEntry> data = [];

  static void addExerciseEntries() {
    data.add(ExerciseEntry('Bicep Curls', '', '', ExerciseType.Isolation, [ExerciseEquipment.Dumbells], []));
    data.add(ExerciseEntry('Deadlift', '', '', ExerciseType.Compound, [ExerciseEquipment.Barbell], []));
    data.add(ExerciseEntry('Squat', '', '', ExerciseType.Compound, [ExerciseEquipment.Barbell], []));
  }

  static bool validateEntries() {
    var isSuccessful = true;
    for (var d in data) {
      var res = d.validate();
      if (res.isNotEmpty) {
        print(d.toString());
        for (var v in res) {
          if (v.errorCode == ValidationCodes.ERROR) {
            isSuccessful = false;
          }
          print(v.message);
        }
        print('---------------------------');
      }
    }
    return isSuccessful;
  }

  static List<dynamic> convertToJson() {
    var jsonData = [];
    for (var d in data) {
      jsonData.add(jsonEncode(d));
    }
    return jsonData;
  }

}