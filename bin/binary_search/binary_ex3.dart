import 'dart:collection';

int findPeakElement(List<int> arr, int low, int high) {
  int mid = low + (high - low) ~/ 2;
  if (arr[mid] > arr[mid + 1]) {
    return mid;
  } else {
    if (arr[mid] < arr[mid + 1]) {
      return findPeakElement(arr, mid + 1, high);
    } else {
      return findPeakElement(arr, low, mid - 1);
    }
  }
}

void main() {
  List<int> arr = [1, 3, 20, 4, 1, 0];
  int n = arr.length;
  print("Index of a peak point is ${findPeakElement(arr, 0, n - 1)}");
}
