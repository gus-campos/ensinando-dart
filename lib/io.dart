import 'dart:io';

String readLine() {
  stdout.write("> ");
  return stdin.readLineSync() ?? "";
}