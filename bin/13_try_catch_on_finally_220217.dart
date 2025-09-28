void main() async {
  print('Inicio del programa');

  // Caso 1: Éxito
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos?ok=1');
    print('éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch (éxito)\n');
  }

  // Caso 2: Lanza Exception (entra en "on Exception")
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos?exception=1');
    print('éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch (Exception)\n');
  }

  // Caso 3: Lanza error NO-Exception (String) -> entra al "catch" genérico
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos?error=1');
    print('éxito: $value');
  } on Exception catch (err) {
    print('Tenemos una Exception: $err');
  } catch (err) {
    print('OOP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try y catch (error genérico)\n');
  }

  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  if (url.contains('exception')) {
    throw Exception('No hay parámetros en el URL');
  }

  if (url.contains('error')) {
    throw 'Error en la petición';
  }

  return 'Tenemos un valor de la petición (${Uri.parse(url).query})';
}
