import 'package:workout_app/domain/importers/base_importer.dart';

class CSVFileImporter extends BaseImporter {

  CSVFileImporter(String filePath) : super(filePath);

  @override
  List<dynamic> convert(List<dynamic> data) {
    var res = [];
    for (var line in data) {
      res.add(line.split(','));
    }
    return res;
  }
}