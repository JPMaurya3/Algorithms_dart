import 'dart:io';

void main() {
  List<int> arr = [12, 11, 13, 5, 6, 7];

  print("Given Array");
  print(arr);

  MergeSort().sort(arr, 0, arr.length - 1);

  print("\nSorted array");
  MergeSort().printArray(arr);
}

class MergeSort {
  void merge(List<int> arr, int l, int m, int r) {
    /*Specifically, n1 is calculated as the difference between the middle index m and the left index l,
     plus one. This is because the left subarray starts at index l and has a length of n1*/
    int n1 = m - l + 1;
    int n2 = r - m;
/*After calculating n1, a new list L is created with a length of n1 to store the left subarray.*/
    List<int> L = List<int>.filled(n1, 0);
    //filled use
    List<int> R = List<int>.filled(n2, 0);

    for (int i = 0; i < n1; ++i) {
      L[i] = arr[l + i];
    }
    for (int j = 0; j < n2; ++j) {
      R[j] = arr[m + 1 + j];
    }

    int i = 0, j = 0, k = l;
    while (i < n1 && j < n2) {
      if (L[i] <= R[j]) {
        arr[k] = L[i];
        i++;
      } else {
        arr[k] = R[j];
        j++;
      }
      k++;
    }

    while (i < n1) {
      arr[k] = L[i];
      i++;
      k++;
    }

    while (j < n2) {
      arr[k] = R[j];
      j++;
      k++;
    }
  }

  void sort(List<int> arr, int l, int r) {
    if (l < r) {
      int m = l + ((r - l) ~/ 2);
      sort(arr, l, m);
      sort(arr, m + 1, r);
      merge(arr, l, m, r);
    }
  }

  void printArray(List<int> arr) {
    int n = arr.length;
    for (int i = 0; i < n; ++i) {
      stdout.write("${arr[i]} ");
    }
    print("");
  }
}
