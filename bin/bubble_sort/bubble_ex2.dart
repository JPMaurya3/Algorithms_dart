void bubbleSort(List<int> numList) {
  for (int i = 0; i < numList.length - 1; i++) {
    for (int j = 0; j < numList.length - i - 1; j++) {
      if (numList[j] > numList[j + 1]) {
        int temp = numList[j];
        numList[j] = numList[j + 1];
        numList[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numList = [0, 2, 1, 2, 0];
  bubbleSort(numList);
  print(numList);
}
