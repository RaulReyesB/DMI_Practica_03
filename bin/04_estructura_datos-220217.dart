main() {
  final numbers = [1, 1, 1, 1, 2, 3, 4, 5, 6, 7, 7, 7, 9, 9, 10];
  print(numbers);
  print("Tipo de estructura de datos: ${numbers.runtimeType}");

  print(
    "-----------------------------------------------------------------------------------------------------------",
  );
  //Accediendo a propiedades y funciones de los obejetos

  print("Lista Original: $numbers");
  print('Tamaño de Lista ${numbers.length}');
  print("Valor en la posicion 0: ${numbers[0]}");
  print("Primer valor: ${numbers.first}");
  print("Orden Reverso: ${numbers.reversed}");

  print(
    "-----------------------------------------------------------------------------------------------------------",
  );

  final reversedNumbers = numbers.reversed;

  print("Iterable $reversedNumbers");
  print("Lista: ${reversedNumbers.toList()}");
  print("Set: ${reversedNumbers.toSet()}");

  final numberGreaterThan5 = numbers.where((num) {
    return num > 5;
  });

  print(">5: $numberGreaterThan5");
  print(">5: ${numberGreaterThan5.toSet()}");
}
