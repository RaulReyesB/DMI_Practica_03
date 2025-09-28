void main() {

  //TODO, crear una tercera planta de energia hidroelectrica
  //TODO: a lo restado, sumarle el 1.5% extra (por el propio consumo de la planta hidroelectrica), y un tercer consumo en print con la nueva planta de enrgia implementada y mostrar la energia restante

  final heolicaQueretaro = WindPlant(initialEnergy: 234564);
  final nuclearLagunaVerde = NuclearPlant(energyLeft: 8796879);

  print("""
  LISTA DE PLANTAS ENERGETICAS EN MX
  -----------------------------------

  PLANTA HEOLICA DE QUERETARO
  Energia disponible: ${heolicaQueretaro.energyLeft}

  PLANTA NUCLEAR DE LAGUNA VERDE
  Energia dispobile: ${nuclearLagunaVerde.energyLeft}

  -----------------------------------
  """);

  print("""
  Historial de consumos del: 24/09/25

  Solicitud de consumo 1:
  Solicitante: Hospital General de Hidalgo
  Cantidad Solicitada (kWts): 65352
  Proveedor: Planta Heolica de Queretaro
  """);

  //no se utiliza en triple """ porque al poder regresar nada, esta puede fallar 
  heolicaQueretaro.consumeEnergy(65352);

  print("""
  Energia Disponible: ${heolicaQueretaro.energyLeft}

  -------------

  Solicitud de consumo 2:
  Solicitante: Aeropuerto Internacional Felipe Angeles
  Cantidad Solicitada (kWts): 3523443.35 
  Proveedor: Planta Nuclear de Laguna Verde
  """);

  nuclearLagunaVerde.consumeEnergy(3523443.35);
  print("""
  Energia Disponible: ${nuclearLagunaVerde.energyLeft}
  """);

}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {

  double energyLeft;
  final PlantType type;

  EnergyPlant({
    required this.energyLeft,
    required this.type
  });

  void consumeEnergy( double amount );

}

class WindPlant extends EnergyPlant {
  
  WindPlant({ required double initialEnergy })
  : super ( energyLeft: initialEnergy, type: PlantType.wind );

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }

}

class NuclearPlant implements EnergyPlant {

  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({
    required this.energyLeft
  });

  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * .5 );
  }

}