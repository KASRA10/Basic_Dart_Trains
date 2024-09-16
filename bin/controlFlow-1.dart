void main() {
  theLaw(21.2);
} // End Of Main()

void theLaw(double age) {
  if (age.floor() >= 21) {
    print("You can drive");
  } else if (age.floor() >= 16 && age.floor() < 19) {
    print("you can drive with a companionship");
  } else {
    print("'you do not have permission to drive'");
  }
}
