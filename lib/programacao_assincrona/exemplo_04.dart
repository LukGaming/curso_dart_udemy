import 'dart:io';

import 'package:curso_dart_udemy/programacao_assincrona/services/directory_service.dart';
import 'package:curso_dart_udemy/programacao_assincrona/services/files_service.dart';

void main() async {
  final filesService = FilesService();

  final directoryService = DirectoryService();

  final directory = await directoryService.createDirectory("aula_arquivos");

  final fileName = "arquivo_aula_servicos.txt";

  final file = await filesService.createFile("${directory.path}/$fileName");

  await file.writeAsString("Conteúdo do arquivo.", mode: FileMode.append);
}
