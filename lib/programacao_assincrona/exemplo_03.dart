import 'dart:io';

import 'package:curso_dart_udemy/programacao_assincrona/services/directory_service.dart';

void main() async {
  final DirectoryService dirService = DirectoryService();

  final Directory dir = await dirService.createDirectory("arquivos");

  bool diretorioExiste = await dirService.directoryExists("arquivos");

  print("Diretório arquivos existe: $diretorioExiste");

  // await dirService.removeDirectory("arquivos");
}
