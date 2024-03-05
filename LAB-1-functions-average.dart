
double calculateAverage(List<double> numbers) {
  if (numbers.isEmpty) return 0;
  double sum = 0;
  for (var number in numbers) {
    sum += number;
  }
  return sum / numbers.length;
}

