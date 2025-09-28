main() {
  void localFunction() {
    print(
      "Esta es una funcion local y solo puede ser invocada dentro del main()",
    );
  }

  localFunction();
  print("----------------------------------");
  print(globalFunction());
  print("----------------------------------");
  print(greetEveryone());

  print("\n -------------------------------");
  print('Test 1: ${addNumbers(25, 30)}');
  //print('Test 2: ${addNumbers(15, "10")}');
  //print("Test 3: ${addNumbers(25, null)}");
  print("Test 2: ${addTwoNumbersWithOptionals(1)}");
  print("Test 3: ${greetPerson(name: "Raul", message: "CTM")}");

}

String globalFunction() {
  return "Esta es una funcion global y puede ser invocada en cualquier parte del código";
}

String greetEveryone() => globalFunction() + ": Saludos a la banda : d-.-b";

int addNumbers(int a, int b) => a + b;

int addTwoNumbersWithOptionals(int a, [int b = 0]) {
  return a + b;
}

String greetPerson({required String name, String message = "Hola"}) {
  return "${message} ${name}";
}
