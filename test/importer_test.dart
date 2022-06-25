import 'package:flutter_test/flutter_test.dart';
import 'package:workout_app/domain/importers/csv_file_importer.dart';
import 'package:workout_app/domain/importers/json_file_importer.dart';

void main() {
  test('CSV should be loaded and converted into an array', () {
    var expected = [['1','2','3'], ['4','5','6']];

    final f = CSVFileImporter('test/test_data/import.csv');
    var result = f.import();
    expect(result, expected);
  });

  test('JSON should be loaded and converted into an array', () {
    final f = JSONFileImporter('test/test_data/import.json');
    var result = f.import();

    expect(result[0]['id'], 0);
    expect(result[0]['name'], 'Bicep Curls');
    expect(result[0]['icon'], '');
    expect(result[0]['type'], 1);
    expect(result[0]['equipment'], [2]);
    expect(result[0]['muscles'], [1]);

    expect(result[1]['id'], 1);
    expect(result[1]['name'], 'Deadlift');
    expect(result[1]['icon'], '');
    expect(result[1]['type'], 0);
    expect(result[1]['equipment'], [1, 2]);
    expect(result[1]['muscles'], []);

  });
}