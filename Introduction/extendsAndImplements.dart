

void main() {
  
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  print('windPlant: $windPlant');
  print('nuclearPlant: $nuclearPlant');
  
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if(plant.energyLeft < 10){ 
    throw Exception('Not Enough energy');
  }
  
  return plant.energyLeft - 10;
}

enum PlantType {
 nuclear, 
 wind,
 water 
}

abstract class EnergyPlant {
  
  double energyLeft;
  final PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount) {
    throw UnimplementedError();
  }
  
}

// extends and implements

// extends = extender una clase abstracta donde se heredará todo lo de dicha clase
class WindPlant extends EnergyPlant {
  
  WindPlant({
    required double initialEnergy
  }) : super(
    energyLeft: initialEnergy, 
    type: PlantType.wind
  );
    
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
  
}

// implements = Se debe declarar nuevamente las variables y sus tipos, no se hereda nada de la clase implementada, solamente funciona como una especie de validación ya que de igual forma el contenido de ambas clases debe coincidir pero solamente lo que se requiera
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({
    required this.energyLeft
  });
  
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}