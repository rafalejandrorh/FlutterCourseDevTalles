

void main() {
  
  // Descomentar para ver el error
  //inal windPlant = EnergyPlant();

}

enum PlantType {
 nuclear, 
 wind,
 water 
}

abstract class EnergyPlant {
  
  double energyLeft;
  PlantType type; // nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft,
    required this.type
  });
  
  void consumeEnergy(double amount);
  
}