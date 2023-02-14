/*The for...in loop is used to loop through an object's properties.*/

void main() {
  var obj = [12, 13, 14];

  for (var prop in obj) {
    print(prop);
  }
}
