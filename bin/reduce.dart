import 'dart:math';

void main() {
  List<int> numList = [1, 345, 234, 21, 56789];
  int minNumList = numList.reduce(min);
  int maxNumList = numList.reduce(max);
  print("Minimum is: $minNumList");
  print("Maximum is: $maxNumList");
}
