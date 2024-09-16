// Comment Filter Function In Dart
import 'dart:io';

void main() {
  print("Leave A Comment: ");
  String? comment = stdin.readLineSync();

  filtering(comment);
} // End Of Main()

void filtering(String? comment) {
  bool status = true;

  List separatedComment = comment!.split(" ");

  // List Of Bad Words:
  List focusWords = [
    "beach",
    "fuck",
    "fuck!",
    "bad",
    "ugly",
    "fucker",
    "dick",
    "ass",
    "sperm",
    "boob",
    "boob!",
    "boobs",
    "breast",
    "lick",
    "cunt",
    "asshole",
    "ass hole",
    "shit",
    "bullshit",
    "mother fucker",
    "sucker",
    "licker",
    "hell",
    "hell!",
    "cock",
    "sexy",
    "sexy!",
    "sex",
    "sex!",
    "hot ass",
  ];

  for (var element in separatedComment) {
    for (var item in focusWords) {
      if (element == item) {
        status = false;
        break;
      } else {
        status = true;
        continue;
      }
    }
  }

  String message = status
      ? "your comment has been successfully published!".toUpperCase()
      : "your comment is against the rule!!!".toUpperCase();

  print(message);
} // End Of Void Filtering()
