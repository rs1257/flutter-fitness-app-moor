import 'dart:io';

class BaseImporter {
  String filePath = '';

  BaseImporter(this.filePath);

  List<dynamic> loadData() {
    return File(this.filePath).readAsLinesSync();
  }
  
  List<dynamic> convert(List<dynamic> data) { return []; }
  
  List<dynamic> import() {
    var data = loadData();
    return convert(data); 
  }
}