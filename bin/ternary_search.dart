/*It is similar to binary search where we divide the array into two parts but in this algorithm
we divide the given array into three parts and determine which has the key (searched element).

no solution*/

//[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ]
import 'dart:collection';

void main() {
  List listNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  //starting index
  int startingIndex = 0;

  // length of arrat
  var lengthOfList = 9;

  // checking to be searched in the list
  var keyList = 5;

  //print the result

  var printTenerySearch =
      tenerySearch(listNumber, lengthOfList, keyList, startingIndex);
  print(printTenerySearch);
}

tenerySearch(List listNumber, lengthOfList, keyList, startingIndex) {
  if (lengthOfList >= startingIndex) {
    // Find the mid1 and mid2
    var midPoint1 = startingIndex + (lengthOfList - startingIndex) ~/ 3;
    var midPoint2 = lengthOfList - (lengthOfList - midPoint1) ~/ 2;

    // Check if key is present at any mid
    if (listNumber[midPoint1] == keyList) {
      print(">>>>>1$midPoint1");
      return midPoint1;
    }
    if (listNumber[midPoint2] == keyList) {
      print(">>>>>1$midPoint2");
      return midPoint2;
    }
    // Since key is not present at mid,
    // check in which region it is present
    // then repeat the Search operation
    // in that region
    if (keyList <= listNumber[midPoint1]) {
      // The key lies in between l and mid1
      print(">>>>>1$tenerySearch");
      tenerySearch(listNumber, midPoint1 - 1, keyList, startingIndex);
    } else if (keyList >= listNumber[midPoint2]) {
      // The key lies in between mid2 and r
      print(">>>>>2$tenerySearch");

      tenerySearch(listNumber, midPoint2 + 1, keyList, lengthOfList);
    } else {
      // The key lies in between mid1 and mid2
      print(">>>>>3${tenerySearch}");

      tenerySearch(listNumber, midPoint1 + 1, midPoint2 - 1, keyList);
    }
  }
  return -1;
}
