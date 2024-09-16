void main() {
  elevatorScreen(0);
  elevatorScreen(1);
  elevatorScreen(2);
  elevatorScreen(5);
  elevatorScreen(6);
  elevatorScreen(8);
  elevatorScreen(10);
} // End Of Main()

void elevatorScreen(int floor) {
  print("you are in the $floor floor");

  switch (floor) {
    case 0:
      print("$floor floor is the garage");
      break;
    case 1:
      print("$floor floor is the lobby");
      break;
    case 2:
      print("$floor floor is the Department's cellar");
      break;
    case 3:
      print("$floor floor is bussinessical");
      break;
    case 4:
      print("$floor floor is for private use");
      break;
    case 5:
      print("loading ...");
      continue noGoArea;
    case 6:
      print("loading ...");
      continue noGoArea;
    case 7:
    case 8:
    case 9:
      print("$floor floor is the office");
      break;
    case 10:
      print("$floor is the roof garden!!!");
      break;
    noGoArea:
    default:
      print("this floor is not existed!!!");
  }
}
