import 'dart:io';

String input(String pergunta) {
  stdout.write(pergunta);
  return stdin.readLineSync() ?? "";
}