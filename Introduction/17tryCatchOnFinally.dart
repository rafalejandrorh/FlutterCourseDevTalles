void main() async {

  print('Inicio del Programa');
  
  try {
    final value = await httpGet('http://fernando-herrera.com/cursos');
    print(value);
    
  } on Exception catch(err) {
    print('$err');
    
  } catch (err) {
    print('Error: $err');
    
  } finally {
    print('Fin del try or catch');
  }

  print('Fin del Programa');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  //throw 'Error en la petición HTTP';
  throw Exception('No hay parámetros en la URL');
  //return 'Tenemos un valor de la petición HTTP';
}
