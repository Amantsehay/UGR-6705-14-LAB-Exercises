// Function to remove duplicates from a list
List<T> removeDuplicates<T>(List<T> list) {
  List<T> result = [];
  for (var item in list) {
    if (!result.contains(item)) {
      result.add(item);
    }
  }
  return result;
}
