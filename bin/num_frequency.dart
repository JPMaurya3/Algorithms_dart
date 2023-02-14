void main() {
  List<int> vectorList = [1, 1, 1, 1, 1, 1, 45, 6, 6];
  int n = vectorList.length;
  var resultFrequency = numFrequency(vectorList, n);
  print(resultFrequency);
}

numFrequency(List<int> vectorList, int n) {
  int count = 0;
  for (int i = 0; i < n; i++) {
    if (vectorList[i] == 6) {
      count++;
    }
  }
  return count;
}
