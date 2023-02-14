//print the min and max number in this array
void main() {
  List<int> numList = [1, 345, 234, 21, 56789];
  int n = numList.length;
  var minMaxPair = findMinMax(numList, n);
  print('min value is ${minMaxPair['min']}');
  print('max value is ${minMaxPair['max']}');
}

Map<String, int> findMinMax(List<int> numList, int n) {
  int max = numList[0];
  int min = numList[0];
  for (int i = 1; i < n; i++) {
    if (numList[i] > max) {
      max = numList[i];
    }
    if (numList[i] < min) {
      min = numList[i];
    }
  }
  return {'max': max, 'min': min};
}
