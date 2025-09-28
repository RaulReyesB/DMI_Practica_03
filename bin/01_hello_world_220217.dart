main() {
    print("Hola pendejos");
  // Comentarios de una sola  linea

  /*
   * Comentarios multiples
   * */

  // 1. Variables

  var nombre = "Raul";
  var edad = 22;
  var estudiante = true;

  // 2. Interpolacion (Lectura de valores almacenados)

  print("Nombre: $nombre");
  print("Con edad: $edad y el tipo de dato es ${edad.runtimeType}");
  print("Con nombre: $nombre y el tipo de dato es ${nombre.runtimeType}");
  print(
    "Es estudiante: $estudiante y el tipo de dato es ${estudiante.runtimeType}",
  );

  late double? promedioAcumulado;
  print("Tu promedio aun no ha sido calculado, intentalo de nuevo");

  promedioAcumulado = 9.3;
  print(
    "Sea actualizado el valor del promedio acumulado ahora es $promedioAcumulado",
  );
  //const y final se utilizan en datos que no cambian su valor
  int cuatriActual = 10;
  print("Antes de sufrir en la ultima estadia");
  cuatriActual = 11;
  print("El cuatrimestre actual es: $cuatriActual");

  //4. Acceso a metodos primitivos
  print("---------------");
  print("El valor y formato inicial de nombre es: $nombre");
  print(
    "Utilizando los metodos primitivos podemos tranformarlo a todas mayusculas, y el resultado es: ${nombre.toUpperCase()}",
  );

  print({1 + 1});
  print("1" + "1");
}