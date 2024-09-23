void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List orginal: $numbers');
  print('Length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print("Iterable: $reversedNumbers");
  print("List: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");

  final numbersGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 to set: ${numbersGreaterThan5.toSet()}');

//Spread operator
  final List<int>? list_1 = [1, 2, 3];
  final list_2 = [0, ...?list_1]; // Null-aware operator
  print(list_2);

// if statement inside list
  bool promoActive = false;
  List<String> nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

// for statement inside list
  List listOfInts = <int>[1, 2, 3];
  List listOfStrings = <String>['#0', for (int i in listOfInts) '#$i'];
  print(listOfStrings);
}
