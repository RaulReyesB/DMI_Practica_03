void main() {
  print('Inicio del programa');

  // 🔹 Ejemplo exitoso
  httpGet('https://fernando-herrera.com/cursos?ok=1')
    .then((value) {
      print('Respuesta recibida: $value');
    })
    .catchError((err) {
      print('Error: $err');
    });

  // 🔹 Ejemplo con error
  httpGet('https://fernando-herrera.com/cursos?error=1')
    .then((value) {
      print('Respuesta recibida: $value');
    })
    .catchError((err) {
      print('Error: $err');
    });

  print('Fin del programa');
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 2), () {
    if (url.contains("error")) {
      // Simulamos error si la URL contiene la palabra "error"
      throw 'Error en la petición http a $url';
    }

    // Si no hay error, devolvemos una respuesta simulada
    return 'Datos simulados desde $url';
  });
}
