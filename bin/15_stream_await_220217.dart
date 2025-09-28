// 15_stream_await: consumir Streams con `await for` + manejo de errores

void main() async {
  print('Inicio del programa\n');

  // Caso 1: Stream exitoso (emite 1..5)
  try {
    print('Caso 1: stream exitoso');
    await for (final value in emitNumbers()) {
      print('Stream value: $value');
    }
    print('Stream 1 terminado correctamente\n');
  } catch (e) {
    print('Error en Stream 1: $e\n');
  }

  // Caso 2: Stream que falla en el 3 (demuestra try/catch con await for)
  try {
    print('Caso 2: stream con error en el 3');
    await for (final value in emitNumbers(throwAt: 3)) {
      print('Stream value: $value');
    }
    print('Stream 2 terminado correctamente (no debería llegar aquí si falla)\n');
  } catch (e) {
    print('Capturado en catch: $e\n');
  } finally {
    print('Fin del try/catch del Caso 2\n');
  }

  // Caso 3 (extra): cancelar temprano con break
  try {
    print('Caso 3: cancelación temprana con break (solo 1 y 2)');
    await for (final value in emitNumbers()) {
      print('Stream value: $value');
      if (value == 2) {
        print('Cortando el stream manualmente con break\n');
        break;
      }
    }
  } catch (e) {
    print('Error en Caso 3: $e\n');
  }

  print('Fin del programa');
}

/// Genera números 1..5, con 1s de espera entre emisiones.
/// Si [throwAt] no es null, lanza una Exception cuando llegue a ese valor.
Stream<int> emitNumbers({int? throwAt}) async* {
  for (var i = 1; i <= 5; i++) {
    await Future.delayed(const Duration(seconds: 1));
    if (throwAt != null && i == throwAt) {
      throw Exception('Fallo simulado en el valor $i');
    }
    yield i;
  }
}
