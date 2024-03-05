void throwError() {
  throw FormatException('Invalid format!');
}

void main() {
  try {
    throwError();
  } on FormatException catch (e) {
    print('FormatException caught: $e');
  } catch (e) {
    print('Other exception caught: $e');
  }
}
