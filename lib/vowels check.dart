import 'dart:io';
void main() {
  String? input = stdin.readLineSync();
  input = input?.toLowerCase();
  if (stringcheck(input!)) {
    print("The string contains a vowel.");
  } else {
    print("The string does not contain any vowel.");
  }
}
  bool stringcheck(String str){
  for(int i =0 ; i< str.length;i++){
    if(str[i] == 'a' || str[i] == 'e' || str[i] == 'i' || str[i] == 'o' || str[i] == 'u'){
      return true;
    }
  }
  return false;

  }