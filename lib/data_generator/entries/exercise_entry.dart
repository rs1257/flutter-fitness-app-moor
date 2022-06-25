import 'dart:convert';
import 'dart:io';

import 'database_entry.dart';
import 'exercise_equipment.dart';
import 'exercise_type.dart';
import 'muscles.dart';
import 'validation_type.dart';

class ExerciseEntry extends DatabaseEntry {
  static int currentId = 0;
  int id;
  String name;
  String icon; // check the assets folder for one called this in the validator and raise a warning.
  String description;
  ExerciseType type;
  List<ExerciseEquipment> equipment;
  List<Muscles> muscles;

  ExerciseEntry(String name, String icon, String description, ExerciseType type, List<ExerciseEquipment> equipment, List<Muscles> muscles) {
    id = currentId++;
    this.name = name;
    this.icon = icon;
    this.description = description;
    this.type = type;
    this.equipment = equipment;
    this.muscles = muscles;
  }

  @override
  String toString() {
    return 'Exercise Entry - ID: ' + id.toString() + ', Name: ' + name;
  }

  @override
  List<ValidationType> validate() {
    var messages = <ValidationType>[];
    if (name == '') {
      messages.add(ValidationType(ValidationCodes.ERROR, 'The name must not be empty'));
    }
    if (icon == '') {
      messages.add(ValidationType(ValidationCodes.NOTICE, 'Icon is empty'));
    }
    if (icon != '') {
      var dir = new Directory('lib/assets/icons');
      List contents = dir.listSync(recursive: true);
      var iconExists = false;
      for (var file in contents) {
        if (file is File) {
          if (file.path.split('\\')[1] == icon) {
            iconExists = true;
          }
        }
      }
      if (!iconExists) {
        messages.add(ValidationType(ValidationCodes.WARNING, "The icon doesn't exist"));
      }
    }
    if (description == '') {
      messages.add(ValidationType(ValidationCodes.NOTICE, 'The description is empty'));
    }
    if (equipment.isEmpty) {
      messages.add(ValidationType(ValidationCodes.ERROR, 'The equipment list is empty'));
    }
    if (muscles.isEmpty) {
      messages.add(ValidationType(ValidationCodes.NOTICE, 'The muscles list is empty'));
    }
    return messages;
  }

  Map<String, dynamic> toJson() {
    var equipmentValues = equipment.map((e) => (e.index)).toList();
    var muscleValues = muscles.map((m) => (m.index)).toList();
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'description': description,
      'type': type.index,
      'equipment': equipmentValues,
      'muscles': muscleValues
    };
}
}