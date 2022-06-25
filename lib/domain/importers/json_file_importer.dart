import 'dart:convert';

import 'package:workout_app/domain/importers/base_importer.dart';

class JSONFileImporter extends BaseImporter {

  JSONFileImporter(String filePath) : super(filePath);

  @override
  List<dynamic> convert(List<dynamic> data) {
    var decodedData = jsonDecode(data.toString());
    return decodedData[0]['data'];
  }
}