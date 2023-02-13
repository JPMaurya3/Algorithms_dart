void main() {
  List<int> numLiist = [2, 3, 4, 10, 40];
  int numSearch = 10;
  int result = linerSearch(numLiist, numSearch);
  if (result == -1) {
    print("elemnet is not found in this array");
  } else {
    print(result);
  }
}

int linerSearch(List<int> numLiist, int numSearch) {
  int n = numLiist.length;
  for (int i = 0; i < n; i++) {
    if (numLiist[i] == numSearch) {
      return i;
    }
  }
  return -1;
}
