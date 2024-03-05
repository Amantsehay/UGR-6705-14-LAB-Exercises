void main() {
  try {
    throw Exception('Some error');
  } catch (e) {
    print('Exception caught: $e');
  } finally {
    print('Finally block executed');
  }
}
