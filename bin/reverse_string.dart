// void main() {
//   String name = "abcdefghijkl";
//   List<String> chars = name.split('');
//   var chr = chars.reversed.toList();
//   print(chr);
//   String reversedName = chr.join();
//   print(reversedName);
// }
void main() {
  String name = "jakjsksdjkskl";
  String reversedName = "";
  for (int i = name.length - 1; i >= 0; i--) {
    reversedName += name[i];
    // here += operator work like
    // x =5;
    // x +=3;
    // first added 5 and then 3 resule is 8
  }
  print(reversedName);
}
