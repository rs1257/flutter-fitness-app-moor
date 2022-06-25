import 'dart:io';

class BaseExporter {
  String filePath = '';

  BaseExporter(this.filePath);

  void writeData(List<dynamic> data) {
    var f = File(this.filePath);
    f.createSync(recursive: true);
    for (var d in data) {
      f.writeAsStringSync(d, mode: FileMode.append);
    }
  }

  List<dynamic> convert(dynamic data){return [];}
  
  void export(d) {
    var data = convert(d);
    writeData(data);
  }
}