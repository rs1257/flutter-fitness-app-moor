import 'dart:convert';

import 'package:workout_app/domain/exporters/base_exporter.dart';

class JSONFileExporter extends BaseExporter {

  JSONFileExporter(String filePath) : super(filePath);

  @override
  List<dynamic> convert(dynamic data) {
    var res = jsonEncode(data);
    return ['{ "data": [' + res + ']}'];
  }

}