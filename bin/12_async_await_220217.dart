void main() async {
  print('Inicio del programa');

  // 🔹 Caso exitoso
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos?ok=1');
    print('Respuesta recibida: $value');
  } catch (err) {
    print('Tenemos un error: $err');
  }

  // 🔹 Caso con error
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos?error=1');
    print('Respuesta recibida: $value');
  } catch (err) {
    print('Tenemos un error: $err');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  if (url.contains("error")) {
    // Simulamos que la petición falla
    throw 'Error en la petición a $url';
  }

  // Respuesta simulada
  return 'Datos simulados desde $url';
}
