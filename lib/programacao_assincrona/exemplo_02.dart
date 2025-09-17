import 'dart:io';

void main() async {
  final dir = Directory("arquivos");

  if (!await dir.exists()) {
    await dir.create();
  }

  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(milliseconds: 500));

    final arquivo = File("${dir.path}/meu_primeiro_arquivo$i.txt");
    if (!await arquivo.exists()) await arquivo.create();
  }
}
