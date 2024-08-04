void main() {

  print('Inicio del Programa');
  
  httpGet('http://fernando-herrera.com/cursos')
    .then((value) {
      print(value);
    })
    .catchError((error) { 
      print('Error: $error');
    });
  
  print('Fin del Programa');
}

Future<String> httpGet(String url) {
  
  // Esperar un tiempo en específico
  return Future.delayed(const Duration(seconds: 1), ()   {
    throw 'Error en la petición HTTP';
    //return 'Respuesta de la petición HTTP';
  }); 
  
}
