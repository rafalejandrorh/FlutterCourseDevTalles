void main() {
  
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };
  final ironman = new Hero.fromJson(rawJson);

  //final ironman = new Hero(
  //  name: 'Tony Stark', 
  //  power: 'Money',
  //  isAlive: false
  //);

  print(ironman);
}

class Hero {
  
  String name;
  String power;
  bool isAlive;
  
  Hero({
    required this.name, 
    this.power = 'Within Power',
    required this.isAlive
  }); 
  
  Hero.fromJson(Map <String, dynamic> json) :
    name = json['name2'] ?? 'Name Not Found',
    power = json['power2'] ?? 'Power Not Found',
    isAlive = json['isAlive2'] ?? false;
  
  @override
  String toString() {
    return '$name, Power: $power, isAlive: ${ isAlive ? 'YES' : 'NO'}';
  }
}