void main() {

  
  final Map<String, dynamic> pokemon = {
    'name': 'Pikachu',
    'hp': 120,
    'isAlive': true,
    'abilities': {1: "Impactrueno", 2: "Rasengan", 3: "Truenito"},
    'sprites': <String>["Aqua", "Idk"],
    'minRate': null,
  };

  print(pokemon);

  print('name:${pokemon['name']}');

  print('Back: ${pokemon['sprities'][1]}');
  print('Font: ${pokemon['sprities'][2]}');
  print('---------------------------------------------------------\n');

  //Calculando los datos

  if (pokemon['hp'] > 0 ? true : false) ;

  //Accediendo a propiedades individuales del Map
  final StringBuffer abilitiesBuffer = StringBuffer();
  final Map<int, String> abilities = pokemon['abilities'] as Map<int, String>;
  abilities.forEach((key, value) {
    abilitiesBuffer.writeln(
      '   $key: $value  Tipo de dato: ${value.runtimeType}',
    );
  });

  print("""
    Nombre: ${pokemon['name']}                    Tipo de dato: ${pokemon['name'].runtimeType} \n
    Vida: ${pokemon['hp']}                        Tipo de dato: ${pokemon['hp'].runtimeType} \n
    Status: ${pokemon['isAlive'] ? 'Vivo' : 'Derrotado'}                        Tipo de dato: ${pokemon['isAlive'].runtimeType} \n
    Habilidades: ${abilitiesBuffer.toString().trimRight()}                      Tipo de dato: ${pokemon['abilities'].runtimeType} \n
    Imagenes: ${pokemon['sprites']}                        Tipo de dato: ${pokemon['sprites'].runtimeType} \n
    : ${pokemon['sprites']}                        Tipo de dato: ${pokemon['sprites'][0].runtimeType} \n

  """);
}
