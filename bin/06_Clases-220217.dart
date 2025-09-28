void main() {
  final Hero spiderMan = Hero(name: "Spider-Man", power: "Fuerza");
  print(spiderMan);
  print("""
  Nombre: ${spiderMan.name}
  Poder: ${spiderMan.power}
""");

  final Hero superMan = Hero(name: "Superman", power: "Volar");
  print(spiderMan);
  print("""
    Nombre: ${superMan.name}
    Poder: ${superMan.power}
  """);

  final Hero ironMan = Hero(name: "Iron Man");
  print(ironMan);
  print("""
  ${ironMan.toString()}
    Nombre: ${ironMan.name}
    Poder: ${ironMan.power}
  """);
}

class Hero {
  String name;
  String power;

  Hero({required this.name, this.power = "Sin poder"});

  @override
  String toString() {
    return '${name} - ${power}';
  }
}
