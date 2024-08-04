void main() {

  emitNumbers().listen((value) {
    print('Stream value: $value');
  });
  
}

Stream<int> emitNumbers() {
  
  return Stream.periodic(const Duration(seconds: 2), (value) {
    //print('desde periodic $value');
    return value;
  }).take(5);
  
}
