void main() {
  int n = 10;
  int first = 0, second = 1;

  print("First $n Fibonacci numbers:");

  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      print(i);
    } else {
      int next = first + second;
      first = second;
      second = next;
      print(next);
    }
  }
}

