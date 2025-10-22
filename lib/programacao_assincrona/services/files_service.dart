import 'dart:io';

class FilesService {
  Future<bool> fileExists(String path) async {
    final file = File(path);
    return await file.exists();
  }

  Future<File> createFile(String path) async {
    print("Path: $path");
    final file = File(path);
    if (await fileExists(path)) return file;
    return await file.create();
  }
}
