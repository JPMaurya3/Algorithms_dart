void main() {
  List<int> arrList = [5, 6, 7, 8, 9, 10, 1, 2, 3];
  int n = arrList.length;
  int key = 3;
  var printResult = pivotedBinarySearch(arrList, n, key);
  print(printResult);
}

pivotedBinarySearch(arrList, n, key) {
  var pivot = findPivot(arrList, 0, n - 1);

  // If we didn't find a pivot, then
  // array is not rotated at all
  if (pivot == -1) {
    return binarySearch(arrList, 0, n - 1, key);
  }

  // If we found a pivot, then first
  // compare with pivot and then
  // search in two subarrays around pivot
  if (arrList[pivot] == key) {
    return pivot;
  }
  if (arrList[0] <= key) {
    return binarySearch(arrList, 0, pivot - 1, key);
  }
  return binarySearch(arrList, pivot + 1, n - 1, key);
}

findPivot(arrList, var low, var high) {
  // base cases
  if (high < low) {
    return -1;
  }
  if (high == low) {
    return low;
  }

  /* low + (high - low)/2; */
  var mid = (low + high) ~/ 2;
  if (mid < high && arrList[mid] > arrList[mid + 1]) {
    return mid;
  }
  if (mid > low && arrList[mid] < arrList[mid - 1]) {
    return (mid - 1);
  }
  if (arrList[low] >= arrList[mid]) {
    return findPivot(arrList, low, mid - 1);
  }
  return findPivot(arrList, mid + 1, high);
}

binarySearch(List<int> arrList, var low, var high, int key) {
  if (high < low) {
    return -1;
  }

  /* low + (high - low)/2; */
  var mid = (low + high) ~/ 2;
  if (key == arrList[mid]) {
    return mid;
  }
  if (key > arrList[mid]) {
    return binarySearch(arrList, (mid + 1), high, key);
  }
  return binarySearch(arrList, low, (mid - 1), key);
}
