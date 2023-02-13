// void main() {
//   int A = 4;
//   int B = 2;
//   int N = 7;
//   var result = findXY(A, B, N);

//   print(result);
// }

// findXY(int N, int B, int A) {
//   int x = 0;
//   int y = (N - A * x) ~/ B;
//   while (x >= 0 && y >= 0) {
//     if (A * x + B * y == N) {
//       print("x:$x, y:$y");
//     }

//     x++;
//     y = (N - A * x) ~/ B;
//   }
//   return ("there is not solution for x and y");
// }
void main() {
  int a = 5;
  int b = 7;
  int n = 12;
  findXY(n, a, b);
}

findXY(int n, int a, int b) {
  int x = 0;
  int y = (n - a * x) ~/ b;
  while (x >= 0 && y >= 0) {
    if (a * x + b * y == n) {}
    x++;
    y = (n - a * x) ~/ b;
  }
  return print("there is not solution for x and y");
}
