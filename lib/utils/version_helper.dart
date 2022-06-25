class VersionHelper {

  static String getVersionFromAssetName(String assetName) {
    //lib/data_generator/output/0.0.1-data.json
    var filename = assetName.split('/').last;
    return filename.split('-').first;
  }

  static bool isVersionNewer(String currentVersion, String newVersion) {
    var currentArray = currentVersion.split('.');
    var newArray = newVersion.split('.');
    // might need to do an equals here? And naming is confusing
    if (int.parse(currentArray[0]) < int.parse(newArray[0])) {
      return true;
    }
    else if (int.parse(currentArray[1]) < int.parse(newArray[1])) {
      return true;
    }
    else if (int.parse(currentArray[2]) < int.parse(newArray[2])) {
      return true;
    }
    return false;
  }
}