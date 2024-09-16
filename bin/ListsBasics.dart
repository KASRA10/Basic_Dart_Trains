void main() {
  List<int> l1 = [1, 2];
  List<double> l2 = [1.1, 2.2];
  List<num> l3 = [1, 2.2];
  List<String> l4 = ['a', 'b'];
  List<bool> l5 = [true, false];
  List l6 = <int>[3, 4]; // it is dynamic list that get int value in the list.
  List<int> l7 = List.empty(growable: true); //as default, growable is true.
  print("this is empty list now: $l7");
  l7.add(7);
  l7.add(77);
  l7.add(777);
  print(l7);
  List<int> l8 = List.filled(2, 0);
  // List<int> l8 = new List.filled(2, 0); // with new keyWord.
  print(l8);
  l8[0] = 9;
  l8[1] = 99;
  print(l8);
  List<int> l9 = List<int>.filled(2, 1);
  List<int> l10 = List.generate(2, (index) => index + 2, growable: false);
  List<num> l11 = [...l7, 100, 100];
  int aNumber = 100;
  print(aNumber);
  List<int> l12 = [
    ...l7,
    if (aNumber <= 100) aNumber,
  ];
  List l13 = [1, 2.2, 'dart']; //dynamic
  List<Object> l14 = ['a', true, 2.2, 'flutter']; //object
  List<int?>?
      l15; // it is a nullable list that can have nullable value of the list as well ==> null.
  print(
      "${l1}\n$l2\n$l3\n$l4\n$l5\n$l6\n$l7\n$l8\n$l9\n$l10\n$l11\n$l12\n$l13\n$l14\n$l15");
  print(l1[0]);
  print(l1[1]);
  print(l1.length);
  print(l1.hashCode);
  print(l1.runtimeType);
  print(l1.isEmpty);
  print(l1.isNotEmpty);
  print(l1.iterator);
  print(l1.reversed);
  print(l1.reversed.toList());
  print(l1.first);
  print(l1.firstOrNull);
  print(l1.last);
  print(l1.lastOrNull);
  // print(l1.single); // just for lists with one member.
  print(l1.indexed);
  print(l1.indexed.toList());
  print(l1.indexed.toSet());
  print(l1.indexOf(1));
  print(l1.indexOf(1, 0));
  print(l1.indexOf(4)); //-1
  print(l1.elementAt(1));
  print(l1.elementAt(1));
  print(l1.elementAtOrNull(1));
  print(l1.elementAtOrNull(6));
  print(l1.lastIndexWhere((l1) => l1.isOdd));
  print(l1.indexWhere((l1) => l1.isOdd));
  print(l1.contains(100));
  l1.add(567);
  print(l1);
  l1.insert(3, 989898);
  print(l1);
  l1.addAll(l8);
  print(l1);
  l1.remove(2);
  print(l1);
  l1.removeAt(2); //index of removal part
  print(l1);
  l1.removeLast();
  print(l1);
  // l1.removeRange(start, end);
  l1.removeWhere((element) => element > 100);
  print(l1);
  var aMap = l1.map((element) => "Key$element : $element");
  print(aMap);
  // l1.clear()

  List<String> l16 = [
    "K",
    "A",
    "S",
    "R",
    "A",
  ];

  for (int i = 0; i < l16.length; i++) {
    print("Counter is: $i and value is: ${l16[i]}");
  }

  var l17 = List.filled(10, 0);
  for (int j = 1; j <= l17.length; j++) {
    l17[j - 1] = j;
  }
  print(l17);
} // End Of Main()

