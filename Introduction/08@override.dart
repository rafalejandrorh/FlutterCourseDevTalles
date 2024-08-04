void main() {
  final wolverine = new Hero(name: 'Logan', power: 'Regeneration');
  //final wolverine = new Hero(name: 'Logan');
  
  print(wolverine);
  print('Name: ${wolverine.name}');
  print('Power: ${wolverine.power}');
}

class Hero {
  
  String name;
  String power;
  
  Hero({
    required this.name, 
    this.power = 'Within Power'
  }); 
  
  @override
  String toString() {
    return '$name - $power';
  }
  
}