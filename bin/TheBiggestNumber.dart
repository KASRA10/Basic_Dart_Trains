void main() {
  List<int> numbers = [8, 10, 2, 5, 9];
  List<int> numbersTwo = [77, 9, 99];

  theBiggestOne(numbers);
  theBiggestOne(numbersTwo);

  theBiggestOne([0, 6, 77, 88]);
} // End Of Main()

void theBiggestOne(List<int> numbers) {
  int theBiggestNumber = numbers.first;

  for (int i = 0; i < numbers.length; i++) {
    // simple if
    // if (theBiggestNumber > numbers[i]) {
    //   theBiggestNumber;
    // } else {
    //   theBiggestNumber = numbers[i];
    // }

    // better if
    // theBiggestNumber = (theBiggestNumber > numbers[i])
    //     ? theBiggestNumber
    //     : theBiggestNumber = numbers[i];

    // smallest if to write, optimized:
    if (numbers[i] > theBiggestNumber) {
      theBiggestNumber = numbers[i];
    }
  }

  print(
      'the biggest number in this array is: $theBiggestNumber and it\'s index is: ${numbers.indexOf(theBiggestNumber)}'
          .toUpperCase());
}
