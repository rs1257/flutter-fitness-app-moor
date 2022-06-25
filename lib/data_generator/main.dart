import 'dart:io';

import 'data/all_data.dart';

// Data Generation
const DATA_VERSION = '0.0.4';

const OUTPUT_FOLDER_PATH = 'lib/data_generator/output/';
const OUTPUT_FILE_NAME = 'data.json';

void main(List<String> arguments) {
  try {
    new Directory(OUTPUT_FOLDER_PATH).deleteSync(recursive: true);
  }
  on Exception catch (Exception, e) {
    print(e);
  }
  AllData.addExerciseEntries();
  if (AllData.validateEntries()) {

    var jsonData = AllData.convertToJson();
    
    var fileName = OUTPUT_FOLDER_PATH + '/' + DATA_VERSION + '-' + OUTPUT_FILE_NAME;
    var f = File(fileName);
    f.createSync(recursive: true);
    f.writeAsStringSync('{ "data": [' + jsonData.join(', ') + ']}');
  }
  else {
    print('###########################');
    print('Validation Failed: Aborting');
    print('###########################');
  }
}
