import 'dart:convert';

import 'package:flutter/material.dart';

class AssetHelper {
  
  static Future<Iterable<String>> listAllAssetFiles(BuildContext context) async {
    final manifestContent = await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = jsonDecode(manifestContent);
    return manifestMap.keys;
  }

  static Future<bool> assetExists(BuildContext context, String assetName) async {
    var assets = await listAllAssetFiles(context);
    for (var a in assets) {
      if (a == assetName) {
        return true;
      }
    }
    return false;
  }

  static Future<String> loadAsset(BuildContext context, String assetPath) async {
    // TODO add error handling
    return await DefaultAssetBundle.of(context).loadString((assetPath));
  }

  static Future<String> getVersionAssetName(BuildContext context) async {
    final manifestContent = await DefaultAssetBundle.of(context).loadString('AssetManifest.json');
    final Map<String, dynamic> manifestMap = jsonDecode(manifestContent);
    String res;
    for (var v in manifestMap.keys) {
      if (v.contains('lib/data_generator/output/')) {
        res = v;
      }
    }
    return res;
  }

}