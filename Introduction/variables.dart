void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;
  final List<String> abilities = ['Impostor', 'Rápido'];
  final sprites = <String>['dittto/front.png', 'ditto/back.png'];
  dynamic errorMessage = 'Error';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = {1,2,3,4,5,6};
  errorMessage = () => true;
  errorMessage = null;
  
  // bool? islive; = true, false, null
  // dynamic == null (Por defecto es null)
  
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  """);
  
}
