int binarySearch(List<int> arr, int x) {
  int left = 0;
  int right = arr.length - 1;

  while (left <= right) {
    int mid = (left + right) ~/ 2;

    if (arr[mid] == x) {
      return mid;
    } else if (arr[mid] < x) {
      left = mid + 1;
    } else {
      right = mid - 1;
    }
  }

  return -1;
}

void main() {
  List<int> arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170];
  int x = 110;
  int index = binarySearch(arr, x);

  if (index == -1) {
    print('$x not found in the array');
  } else {
    print('$x found at index $index');
  }
}
