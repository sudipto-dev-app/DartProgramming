import 'dart:io';

void main() {
  // Write your dart code from here
  int? nam1, nam2;

  nam1 = int.parse(stdin.readLineSync()!);
  nam2 = int.parse(stdin.readLineSync()!);
  int result;
  result = (nam1 + nam2);
  print("$result");
}