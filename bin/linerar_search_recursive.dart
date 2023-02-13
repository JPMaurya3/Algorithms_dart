//If the size of the array is zero then, return -1,
//representing that the element is not found.
//This can also be treated as the base condition of a recursion call.
//Otherwise, check if the element at the current
//index in the array is equal to the key or not i.e, arr[size – 1] == key
//If equal, then return the index of the found key.
void main() {
  List<int> numList = [5, 15, 6, 9, 4];
  int findList = 4;
  int size = numList.length;
  int result = linearRecursive(numList, findList, size);
  if (result == -1) {
    print("element is not found in this array");
  } else {
    print(result);
  }
}

int linearRecursive(List<int> numList, findList, int size) {
  if (size == 0) {
    return -1;
  } else if (numList[size - 1] == findList) {
    return size - 1;
  } else {
    return linearRecursive(numList, findList, size - 1);
  }
}
