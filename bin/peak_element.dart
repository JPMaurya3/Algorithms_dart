void main() {
//   List<int> numList=[1, 3, 20, 4, 1, 0 ];// output is 2
  List<int> numList = [0, 1, 1, 3, 4, 20];
  var n = numList.length;
  print("Index of a peak point is ${findPeak(numList, n)}");
}
// Find the peak element in the array

findPeak(List<int> numList, var n) {
  if (n == 1) {
    return 0;
  } else if (numList[0] >= numList[1]) {
    // numList[0] is access the first element
    return 0;
  } else if (numList[n - 1] >= numList[n - 2]) {
    return n - 1;
  }

  // Check for every other element

  for (int i = 1; i < n - 1; i++) {
    // check if the neighbors are smaller
    if (numList[i] >= numList[i - 1] && numList[i] >= numList[i + 1]) {
      return i;
    }
  }
}
