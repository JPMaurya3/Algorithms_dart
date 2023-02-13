//Input: arr[] = {10, 20, 30, 40, 60, 110, 120, 130, 170}, x = 175
void main() {
  List<int> numList = [10, 20, 30, 40, 60, 110, 120, 130, 170];
  int x = 175;
  int index = binarySerach(numList, x, 0, numList.length - 1);
  if (index == -1) {
    print("$x is not found in this array");
  } else {
    print("$x is at index $index");
  }
}

binarySerach(List<int> numList, int x, left, right) {
  if (left > right) return -1;
  int mid = (left + right) ~/ 2;
  if (numList[mid] == x) {
    return mid;
  } else if (numList[mid] < x) {
    return binarySerach(numList, x, left + 1, right);
  } else {
    return binarySerach(numList, x, left - 1, right);
  }
}
