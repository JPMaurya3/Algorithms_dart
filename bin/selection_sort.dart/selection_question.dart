void main() {
  List<int> numList = [64, 25, 12, 22, 11];
  List<int> result = selectionSort(numList);
  print(result);
}

List<int> selectionSort(List<int> numList) {
  int n = numList.length;
  // One by one move boundary of unsorted subarray
  for (int i = 0; i < n - 1; i++) {
    //The variable minIndex is used to
    //keep track of the index of the minimum element in the unsorted portion of the list
    int minIndex = i;
    for (int j = i + 1; j < n; j++) {
      if (numList[j] < numList[minIndex]) {
        minIndex = j;
      }
    }
    // Swap the found minimum element with the first element
    int temp = numList[minIndex];
    numList[minIndex] = numList[i];
    numList[i] = temp;
  }
  return numList;
}
