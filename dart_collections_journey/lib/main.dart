import 'dart:math';

void main() {
  runTask1();
}

// Task 1: Списки (List)
// Створіть список numbers зі 100 елементів. Кожен елемент — випадкове число від 0 до 100 (використайте Random().nextInt(101)).
// Виведіть цей список на екран.
// Виведіть на екран 65-й елемент списку у форматі: "65-й елемент: [значення]".
// Вставте число 1000000000 на 50-ту позицію списку.
// Видаліть зі списку елементи зі значеннями: 24, 45, 66, 88.
// За допомогою циклу for переберіть список. Під час перебору:
// Порахуйте суму всіх елементів, що діляться на 3 без залишку.
// Виведіть результат.
// Створіть порожній список temp. За допомогою циклу for-in переберіть numbers. Додайте до temp лише ті елементи, що діляться на 2 без залишку.
// Виведіть довжину списку temp.

void runTask1() {
  print('------------------- Task 1 -------------------');

  List<int> numbers = List.generate(100, (_) => Random().nextInt(101));

  print("List 'numbers': $numbers");

  if (numbers.length >= 65) {
    print("65th element: ${numbers[64]}");
  } else {
    print("The list has fewer than 65 elements.");
  }

  numbers.insert(49, 1000000000);
  print("After inserting 1000000000 at the 50th position: $numbers");

  numbers.removeWhere((element) => [24, 45, 66, 88].contains(element));
  print("After removing elements with values 24, 45, 66, 88: $numbers");

  int sumDivisibleBy3 = 0;
  for (var number in numbers) {
    if (number % 3 == 0) {
      sumDivisibleBy3 += number;
    }
  }

  print("Sum of all elements divisible by 3: $sumDivisibleBy3");

  List<int> temp = [];
  for (var number in numbers) {
    if (number % 2 == 0) {
      temp.add(number);
    }
  }

  print("Length of the 'temp' list: ${temp.length}");
}
