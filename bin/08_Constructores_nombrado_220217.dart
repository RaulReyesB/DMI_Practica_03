void main(List<String> args) {
  //test 1
  final cuadrado1 = Square(side: 10);
  print(cuadrado1);
  print("El area del cuadrado es: ${cuadrado1.calculateArea}");
  print("------------------------");

  //test 2
  cuadrado1.side = 16.0;
  print(cuadrado1);
  print("El area del cuadrado es: ${cuadrado1.calculateArea}");
  print("------------------------");
  
  //test 3
  cuadrado1.side = -16.0;
  print(cuadrado1);
  print("El area del cuadrado es: ${cuadrado1.calculateArea}");
  print("------------------------");

  //test 4
  final cuadrado2 = Square(side: 0);
  print(cuadrado2);
  print("El area del cuadrado es: ${cuadrado2.calculateArea}");
  print("------------------------");
}

class Square {
  double _side;

  Square({required double side})
    : assert(side > 0, "El tamaÑo del lado debe de ser : 0"),
      _side = side;

  double get calculateArea {
    return _side * _side;
  }

  set side(double value) {
    print("Asignado un nuevo valor a tamaño del lado...");
    if (value <= 0) throw 'El valor debe ser > 0';
    _side = value;
  }
}
