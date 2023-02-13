void main() {
  List<int> numnList = [14, 33, 27, 35, 10];
  List<int> result = bubbleSort(numnList);
  print("$result");
}

List<int> bubbleSort(List<int> numnList) {
  int n = numnList.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numnList[j] > numnList[j + 1]) {
        int temp = numnList[j];
        numnList[j] = numnList[j + 1];
        numnList[j + 1] = temp;
      }
    }
  }
  return numnList;
}
