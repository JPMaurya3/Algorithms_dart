void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; ++i) {
    int key = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

// void printArray(List<int> arr) {
//   for (int i = 0; i < arr.length; ++i) {
//     print(arr[i]);
//   }
//   print("");
// }

void main() {
  List<int> arr = [12, 11, 13, 5, 6];

  insertionSort(arr);
  print(arr);

  // printArray(arr);
}
