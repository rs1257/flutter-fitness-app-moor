// Import the test package and Counter class
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:workout_app/domain/exporters/csv_file_exporter.dart';
import 'package:workout_app/domain/exporters/json_file_exporter.dart';

import 'utils/folder_helper.dart';

void main() {
  setUp(() {
    FolderHelper.deleteDirectory('test/tmp');
  });

  test('Array should be converted and exported as a CSV', () {
    var data = [['1','2','3'], ['4','5','6']];

    final f = CSVFileExporter('test/tmp/export.csv');
    f.export(data);
    
    File res = File('test/tmp/export.csv');
    var actual = res.readAsLinesSync();
    expect(actual, ['1,2,3', '4,5,6']);
  });

  test('Array should be converted and exported as a JSON', () {
    var data = [
      { 'id': 1, 'name': 'Test', 'icon': '', 'type': 0, 'equipment': [1, 2], 'muscles': [] },
      { 'id': 5, 'name': 'Test2', 'icon': '', 'type': 1, 'equipment': [], 'muscles': [2] },
    ];

    final f = JSONFileExporter('test/tmp/export.json');
    f.export(data);
    
    File res = File('test/tmp/export.json');
    var actual = jsonDecode(res.readAsStringSync())['data'][0];
    
    expect(actual[0]['id'], 1);
    expect(actual[0]['name'], 'Test');
    expect(actual[0]['icon'], '');
    expect(actual[0]['type'], 0);
    expect(actual[0]['equipment'], [1, 2]);
    expect(actual[0]['muscles'], []);

    expect(actual[1]['id'], 5);
    expect(actual[1]['name'], 'Test2');
    expect(actual[1]['icon'], '');
    expect(actual[1]['type'], 1);
    expect(actual[1]['equipment'], []);
    expect(actual[1]['muscles'], [2]);
  });
}