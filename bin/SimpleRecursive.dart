void main() {
  List<num> numbers = [10, 41.1, 7, 55.55, 8];

  average(
      numbers); // it does not print anything because it is a recursive function and just return a value.

  print(average(
      numbers)); //print the returnable value of the recursive functions.
} // End Of Main()

String average(List<num> numbers) {
  var number = 0.0;
  bool state = true;
  for (int i = 0; i < numbers.length; i++) {
    number = number + numbers[i];
  }

  double average = number / numbers.length;

  if (average >= 10) {
    return "Your Average is: $average and your situation is: $state";
  } else {
    state = false;
    return "Your Average is: $average and your situation is: $state";
  }
}
