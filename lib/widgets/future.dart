import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:workout_app/database/database.dart';
import 'package:workout_app/fragments/error_fragment.dart';
import 'package:workout_app/utils/asset_helper.dart';
import 'package:workout_app/utils/pref_helper.dart';
import 'package:workout_app/utils/version_helper.dart';

import 'spinner.dart';

class SpinnerFuture extends StatelessWidget {
  final Widget w;

  SpinnerFuture(this.w);

  Future<bool> isDataNew(String dataVersion) async {
    if (await PrefHelper.containsKey('data_version')) {
      var currentVersion = await PrefHelper.getString('data_version');
      print(currentVersion);
      print(dataVersion);
      if (VersionHelper.isVersionNewer(currentVersion, dataVersion)) {
        return true;
      }
    }
    return false;
  }

  Future<void> loadJsonToDatabase(BuildContext c, ExerciseDao dao) async {
    var dataAsset = await AssetHelper.getVersionAssetName(c);
    var version = VersionHelper.getVersionFromAssetName(dataAsset);
    print(await isDataNew(version));
    if (await isDataNew(version) || !await PrefHelper.containsKey('data_version')) {
      print(1);
      return await AssetHelper.loadAsset(c, dataAsset).then((data) async {
        await dao.dropTable();
        var decodedData = jsonDecode(data)['data'];
        for (var entry in decodedData) {
          var a = Exercise(id: entry['id'], description: entry['description'], icon: entry['icon'], name: entry['name'], equipment: entry['equipment'].toString());
          await dao.insertMeasurement(a);
          print(entry);
          await PrefHelper.setString('data_version', version);
        }
        var res = await dao.getAllExercises();
        print(res);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final dao = Provider.of<ExerciseDao>(context);
    return FutureBuilder<void>(
      builder: (context, snapshot) {
        print(snapshot);
        if (snapshot.connectionState == ConnectionState.done) {
          return this.w;
        } else if (snapshot.hasError) {
          return ErrorFragment("${snapshot.error}");
        }
        // By default, show a loading spinner
        return Scaffold(body: Spinner('', ''));
      },
      future: loadJsonToDatabase(context, dao),
    );
  }
}
