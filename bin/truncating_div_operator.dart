void main() {
  int n = 5;
  int k = 0;
  for (int i = n ~/ 2; i <= n; i++) {
    for (int j = 2; j <= n; j *= 2) {
      k += n ~/ 2;
    }
  }
  print(k);
}
/*int ~/(num other)
Truncating division operator.

Performs truncating division of this number by other. 
Truncating division is division where a fractional result is converted to an integer by rounding towards zero.

If both operands are ints, then other must not be zero. Then a ~/ b corresponds to a.remainder(b) such that a == (a ~/ b) * b + a.remainder(b).

If either operand is a double, then the other operand is converted 
to a double before performing the division and truncation of the result.
 Then a ~/ b is equivalent to (a / b).truncate(). 
This means that the intermediate result of the double
 division must be a finite integer (not an infinity or double.nan).*/