import 'dart:io';

void main() {
  print('enter your FirstName here: ');
  String? name = stdin.readLineSync();

  print('enter your LastName here: ');
  String? surName = stdin.readLineSync();

  greeting(name!, surName!);

  print("enter your monthly salary: ");
  String? monthlySalaryNumber = stdin.readLineSync();

  salaryCalculator(monthlySalaryNumber!);
} // End Of Main()

void greeting(String name, String surName) {
  print('Hi dear $name,\nWe Are Grateful To Have You: $name\t$surName');
}

void salaryCalculator(String monthlySalary) {
  double monthlySalaryNumber = double.parse(monthlySalary);
  double preYearSalary = (monthlySalaryNumber * 12);

  print("\$ $preYearSalary");
}
