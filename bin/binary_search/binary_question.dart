int binarySearchRecursive(List<int> arr, int x, int left, int right) {
  if (left > right) return -1;

  int mid = (left + right) ~/ 2;

  if (arr[mid] == x) {
    return mid;
  } else if (arr[mid] < x) {
    return binarySearchRecursive(arr, x, mid + 1, right);
  } else {
    return binarySearchRecursive(arr, x, left, mid - 1);
  }
}

void main() {
  List<int> arr = [10, 20, 30, 50, 60, 80, 110, 130, 140, 170];
  int x = 110;
  int index = binarySearchRecursive(arr, x, 0, arr.length - 1);

  if (index == -1) {
    print('$x not found in the array');
  } else {
    print('$x found at index $index');
  }
}
