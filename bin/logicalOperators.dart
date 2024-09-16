void main() {
  // customsChecker(weight);
  customsChecker(600.3);
  customsChecker(400.1);
  customsChecker(500);
  customsChecker(1000);
  customsChecker(1001);
  customsChecker(10000);
  customsChecker(10010);
  customsChecker(1865232.321);
  customsChecker(50.11);
  customsChecker(7.99);
} // End Of Main()

void customsChecker(num weight) {
  weight = weight.ceil();

  print("your goods weight is: $weight Kg".toUpperCase());

  if (weight >= 500) {
    if (weight >= 500 && weight <= 1000) {
      print("it is accepted");
    } else if (weight >= 1001 || weight > 10000) {
      print("you should field the forms for that!!!");
    } else {
      print("it is not accepted");
    }
  } else {
    print("this weight:\t$weight is \$0 cost".toLowerCase());
  }
}
