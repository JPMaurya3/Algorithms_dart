// min value

int findMin(List<int> arr, int n) {
  int min = arr[0];
  for (int i = 1; i < n; i++) {
    if (arr[i] < min) {
      min = arr[i];
    }
  }
  return min;
}

void main() {
  List<int> arr = [7, 10, 4, 3, 20, 15];
  int n = arr.length;
  int minValue = findMin(arr, n);
  print("The minimum value is: $minValue");
}
