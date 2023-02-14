void main() {
  const foo = Foo.one;
  print(foo.value); // 1
}
// naming convention in enum 
enum Foo {
  one(1),
  two(2);

  const Foo(this.value);
  final num value;
}