void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilities': <String>['Impostor', 'Rápido'],
    'sprites': {
      1: 'dittto/front.png', 
      2: 'ditto/back.png'
     }
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Abilities: ${pokemon['abilities']}');
  print('Sprites 1: ${pokemon['sprites'][1]}');
  print('Sprites 2: ${pokemon['sprites'][2]}');
}
