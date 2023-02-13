//Input: arr[] = {10, 20, 80, 30, 60, 50,110, 100, 130, 170}, x = 175;
void main() {
  List<int> numList = [10, 20, 80, 30, 60, 50, 110, 100, 130, 170];
  int findNum = 175;
  int result = linearSearch(numList, findNum);
  if (result == -1) {
    print("element is not found in this array");
  } else {
    return print(result);
  }
}

int linearSearch(List<int> numList, findNum) {
  int n = numList.length;
  for (int i = 0; i < n; i++) {
    if (numList[i] == findNum) {
      return i;
    }
  }
  return -1;
}
