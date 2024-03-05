
int findHighest(List<int> numbers) {
  if (numbers.isEmpty) return null;
  int highest = numbers[0];
  for (var number in numbers) {
    if (number > highest) {
      highest = number;
    }
  }
  return highest;
}
