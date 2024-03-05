import 'dart:async';

Future<void> waitForFuture() async {
  print('Start');
  await Future.delayed(Duration(seconds: 2));
  print('End');
}

void main() {
  waitForFuture();
}
