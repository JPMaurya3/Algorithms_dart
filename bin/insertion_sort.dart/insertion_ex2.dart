void insertionSort(List<int> numList) {
  for (int i = 1; i < numList.length; i++) {
    int key = numList[i];
    int j = i - 1;
    while (j >= 0 && numList[j] > key) {
      numList[j + 1] = numList[j];
      j = j - 1;
    }
    numList[j + 1] = key;
  }
}

void main() {
  List<int> numList = [0, 2, 1, 2, 0];
  insertionSort(numList);
  print(numList);
}
