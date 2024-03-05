import 'dart:async';

Future<int> getNumber() {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

void main() {
  print('Start');
  getNumber().then((value) {
    print('Result: $value');
  });
}
