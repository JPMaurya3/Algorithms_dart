//Given an array of integers, find the first repeating element in it. We need to find the element that occurs more than once and whose index of first occurrence is smallest.
//Input Format
//You will be given a function with an integer array as arguments.
//Constraints
//1 < N < 10^5
//1 < a[i] < 10^5
//Output Format
//You need to return the first repeating element from the function.
//Input
// 7
// 10
// 5
// 3
// 4
// 3
// 5
// 6
// Here's a sample solution in Python to find the first repeating element in an array:

// firstRepeatedElement(List<int> arr) {
//   Map<int, int> elements = {};
//   for (int i = 0; i < arr.length; i++) {
//     if (elements.containsKey(arr[i])) {
//       return arr[i];
//     } else {
//       elements[arr[i]] = i;
//     }
//   }
//   return null;
// }

// void main() {
//   List<int> arr = [7, 10, 5, 3, 4, 3, 5, 6];
//   print(firstRepeatedElement(arr));
// }

void main() {
  List<int> array = [7, 10, 5, 3, 4, 3, 5, 6];

  for (int i = 0; i < array.length; i++) {
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] == array[j]) {
        print("The first repeated element is: ${array[i]}");
        return;
      }
    }
  }

  print("No repeated elements found.");
}
