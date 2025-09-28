void main() {
  //Test 1

  final comicCharacter magneto = comicCharacter(
    name: "Erikk Lensher",
    alias: "Magneto",
    power: "Magnetismo",
    role: "Anti Heroe",
    isAlive: true,
    enterprise: "Marvel",
  );

  //Test 2

  final comicCharacter lex = comicCharacter(
    name: "Lex Lutor",
    alias: "Lex",
    role: "Villano",
    isAlive: false,
    enterprise: "DC",
  );

  //Test 3
  final Map<String, dynamic> ironmanJSON = {
    'name': "Tony Stark",
    "alias": "Ironman",
    "role": "Heroe",
    "isAlive": true,
    "enterprise": "DC",
  };

  final ironman = comicCharacter.fromJson(ironmanJSON);

  //Test 4
  final Map<String, dynamic> tioBenJSON = {
    "name": "Tio Ben",
    "isAlive": false,
    "enterprise": "Marvel",
  };
  final tioBen = comicCharacter.fromJson(tioBenJSON);


  print(ironman.toString());
  print("------------------");
  print(magneto.toString());
  print("------------------");
  print(lex.toString());
  print("------------------");
  print(tioBen.toString());
  print("------------------");
}

class comicCharacter {
  String name;
  String? alias;
  String power;
  String? role;
  bool isAlive = true;
  String? enterprise;

  comicCharacter({
    required this.name,
    this.alias,
    this.power = "Sin poderes",
    this.role,
    required this.isAlive,
    this.enterprise,
  });
  comicCharacter.fromJson(Map<String, dynamic> data)
    : name = data['name'] ?? "Desconocido",
      alias = data['alias'] ?? "Desconocido",
      power = data['power'] ?? "Desconocido",
      role = data['role'] ?? "Desconocido",
      isAlive = data['isAlive'] ?? true,
      enterprise = data['enterprise'] ?? "Desconocido";

  @override
  String toString() {
    dynamic aliasString = "";

    if (alias != null) {
      aliasString = alias?.toUpperCase();
    }

    return """
    Alias: ${alias?.toUpperCase()}
    Nombre: ${name.toUpperCase()}
    Poder: ${power.toUpperCase()}
    Rol: ${role?.toUpperCase()}
    Empresa: ${enterprise?.toUpperCase()}
    Estatus: ${isAlive ? 'Vivo' : 'Muerto'}
""";
  }
}
