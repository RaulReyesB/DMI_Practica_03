void main() {
  print('Inicio del programa');

  // Escuchar el stream
  emitNumbers().listen(
    (value) {
      print('Stream value: $value');
    },
    onError: (err) {
      print('Ocurrió un error: $err');
    },
    onDone: () {
      print('Stream terminado');
    },
    cancelOnError: false,
  );

  print('Fin del programa');
}

Stream<int> emitNumbers() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value + 1; // emitimos desde 1 en lugar de 0
  }).take(5); // solo emitirá 5 valores
}
