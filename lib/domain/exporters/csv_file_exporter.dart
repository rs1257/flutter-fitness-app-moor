import 'package:workout_app/domain/exporters/base_exporter.dart';

class CSVFileExporter extends BaseExporter {

  CSVFileExporter(String filePath) : super(filePath);

  @override
  List<dynamic> convert(dynamic data) {
    var res = [];
    for (var line in data){
      String entry = line.join(',') + '\n';
      res.add(entry);
    }
    return res;
  } 
}