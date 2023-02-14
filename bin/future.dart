Future<int> test() {
  print('Start test()');
  for (var i = 1; i < 100000; i++) {
    for (var j = 1; j < 100000; j++) {
      var k = i * j;
    }
  }
  print('After a long running task in test()');
  return Future<int>.value(1);
}

//Question about Future execution order in Dart [duplicate]
void main() {
  Future.microtask(test);
  print('Done with main().');
}
