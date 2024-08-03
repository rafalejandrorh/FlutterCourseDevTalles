void main() {
  final wolverine = new Hero('Logan', 'Regeneration');
  
  print(wolverine);
  print('Name: ${wolverine.name}');
  print('Power: ${wolverine.power}');
}

class Hero {
  
  String name;
  String power;
  
  // Forma N°2:
  Hero(this.name, this.power); 
  
  // Forma N°1:
  //Hero(String pName, String pPower)
  //  : name = pName,
  //    power = pPower;
  
  // No se inicializa las variables y da error
  // {
  //this.name = pName;
  //this.power = pPower;
  // }
}