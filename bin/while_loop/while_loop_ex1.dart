// void main() {
//   int i = 1;
//   do {
//     print(i);
//     i++;
//   } while (i <= 4);
// }
/* The example prints numbers from 0 to 10 in the reverse order*/
// void main() {
//   int i = 10;
//   do {
//     print(i);
//     i--;
//   } while (i > 0);
// }
/*print factorial of 5 using while loop*/
// void main() {
//   var num = 5;
//   var result = 1;
//   while (num >= 1) {
//     result *= num;
//     num--;
//   }
//   print(result);
// }
/* We are checking multiple condition by using logical operators */
// void main() {
//   int n1 = 1;
//   int n2 = 1;
//   while (n1 <= 4 && n2 <= 3) {
//     print("n1: $n1, n2: $n2");
//     n1++;
//     n2++;
//   }
// }
/*sum of natural number using while loop*/
// void main() {
//   int n = 100;
//   int i = 1;
//   var total = 0;
//   while (i <= n) {
//     total = total + i;
//     i++;
//   }
//   print(total);
// }
/* display even numbers between 50 to 100;*/
// void main() {
//   int initailValue = 50;
//   while (initailValue <= 100) {
//     if (initailValue % 2 == 0) {
//       print(initailValue);
//     }
//     initailValue++;
//   }
// }
/*sum 1 to 10*/
// void main(){
//   int i=0;
//   var sum =0;
//   while(i<=10){
//     sum =sum +i;
//     print(i);
//     i++;
//   }
//   print("$sum");
// }

//print even
void main() {
  int i = 0;
  while (i <= 10) {
    if (i % 2 == 0) {
      print(i);
    }
    i++;
  }
}
