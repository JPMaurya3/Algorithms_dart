// A binary search // A Java program to find a peak element using divide and
// conquer
//based function that returns index of
// a peak element
findPeak(List<int> arr, int n) {
  int l = 0;
  int r = n - 1;
  int mid = 0;

  while (l <= r) {
    // finding mid by binary right shifting.
    mid = (l + r) >> 1;

    // first case if mid is the answer
    if ((mid == 0 || arr[mid - 1] <= arr[mid]) &&
        (mid == n - 1 || arr[mid + 1] <= arr[mid])) break;

    // move the right pointer
    if (mid > 0 && arr[mid - 1] > arr[mid])
      r = mid - 1;

    // move the left pointer
    else
      l = mid + 1;
  }

  return mid;
}

// Driver Code
void main() {
  List<int> arr = [1, 3, 20, 4, 1, 0];
  int n = arr.length;
  print("Index of a peak point is ${findPeak(arr, n)}");
}


/*Explain l and r

l and r are two pointers that are used to traverse the array arr
 in a binary search manner to find the index of a peak element.
 l is the left pointer and r is the right pointer. 
They are used to determine the sub-array in which the peak element may exist in each iteration of the loop.

n is the length of the array arr. It is used to determine the upper bound of the search as r = n-1.*/