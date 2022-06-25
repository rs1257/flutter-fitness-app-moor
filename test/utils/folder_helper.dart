import 'dart:io';

class FolderHelper {

  static void deleteDirectory(String folderPath, {bool recursive=true}) {
    try {
      new Directory(folderPath).delete(recursive: recursive);
    }
    on Exception catch (Exception, e) {
      print(e);
    }
  }
}