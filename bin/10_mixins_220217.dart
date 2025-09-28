void main() {

  final flipper = Delfin();
  print("""
  ------------------------------------------
  Instancia flipper del tipo Delfin
  """);
  flipper.nadar();

  final lala = Gato();
  print("""
  ------------------------------------------
  Instancia Lala del tipo Gato
  """);
  lala.caminar();

  final lucas = Pato();
  print("""
  ------------------------------------------
  Instancia Lucas del tipo Pato
  """);
  lucas.caminar();
  lucas.nadar();
  lucas.volar();

}

abstract class Animal {}

abstract class Mamifero extends Animal {}
abstract class Oviparo extends Animal {}
abstract class Acuatico extends Animal {}

mixin class Volador {
  void volar() => print('Estoy volando...');
}

mixin class Terrestre {
  void caminar() => print('Estoy caminando...');
}

mixin class Nadador {
  void nadar() => print('Estoy nadando...');
}

class Delfin extends Mamifero with Nadador {}
class Murcielago extends Mamifero with Volador, Terrestre {}
class Gato extends Mamifero with Terrestre {}
class Paloma extends Oviparo with Terrestre, Volador {}
class Pato extends Oviparo with Terrestre, Volador, Nadador {}
class Tiburon extends Acuatico with Nadador {}
class PezVolador extends Acuatico with Volador, Nadador {}
