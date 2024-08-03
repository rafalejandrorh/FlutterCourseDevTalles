mixin Volador {
  void volar({String name = ''}) => print('$name esta volando!');
}

mixin Caminante {
  void caminar({String name = ''}) => print('$name esta caminando!');
}

mixin Nadador {
  void nadar({String name = ''}) => print('$name esta nadando!');
}

abstract class Animal {}
abstract class Mamifero extends Animal {}
abstract class Ave extends Animal {}
abstract class Pez extends Animal {}

// Mamiferos
class Delfin extends Mamifero with Nadador {
  String name = 'Delfin';
}

class Murcielago extends Mamifero with Volador, Caminante {
  String name = 'Murcielago';
}

class Gato extends Mamifero with Caminante {}

// Ave
class Paloma extends Ave with Volador, Caminante {}
class Pato extends Ave with Volador, Caminante, Nadador {
  String name = 'Pato';
}

// Pez
class Tiburon extends Pez with Nadador {}
class PezEspada extends Pez with Nadador {}

void main() {
  final flipper = Delfin();
  flipper.nadar(name: flipper.name);
  
  final batman = Murcielago();
  batman.caminar(name: batman.name);
  batman.volar(name: batman.name);
  
  final namor = Pato();
  namor.caminar(name: namor.name);
  namor.volar(name: namor.name);
  namor.nadar(name: namor.name);
}







