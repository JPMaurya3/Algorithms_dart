//Given A, B and N. Find x and y that satisfies equation Ax + By = N. If there's no solution print -1 in place of both x and y.
//Note: There are Multiple solutions possible. Find the solution where x is minimum. x and y should both be non-negative
void main() {
  int A = 2;
  int B = 3;
  int N = 7;
  findXY(A, B, N);
}

void findXY(int A, int B, int N) {
  int x = 0;
  //The ~/ operator is an integer division operator
  int y = (N - A * x) ~/ B;

  while (x >= 0 && y >= 0) {
    if (A * x + B * y == N) {
      print("x: $x, y: $y");
      return;
    }

    x++;
    y = (N - A * x) ~/ B;
  }

  print("x: -1, y: -1");
}
