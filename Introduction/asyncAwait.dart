void main() async {

  print('Inicio del Programa');
  
  try {
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print(value);
  } catch (err) {
    print('Error: $err');
  }

  
  print('Fin del Programa');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw 'Error en la petición HTTP';
  //return 'Tenemos un valor de la petición HTTP';
}
