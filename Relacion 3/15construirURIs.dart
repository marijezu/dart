/*
15- La clase URI provee funciones para codificar, decodificar, manipular e interpretar URIs.
Después de consultar la documentación oficial, y también este artículo explicativo, haz un
programa que declare un string que contenga una URI, haga la decodificación, lo parsee y
extraiga sus diferentes partes: scheme, host, path, fragment, origin, queryParameters y
las muestre por pantalla.
Construye también un objeto de la clase URI definiendo cada una de sus partes.
Prueba diferentes tipos de URIs como se indica en el artículo indicado.
*/


void main() {
  //Construyo una uri
  Uri uri = Uri.https('www.example.com','/path/to/resource', {'query': 'flutter'},);

  //Muestro las partes de la uri
  print('Scheme: ${uri.scheme}'); // https
  print('Host: ${uri.host}'); // www.example.com
  print('Path: ${uri.path}'); // /path/to/resource
  print('Query: ${uri.query}'); // query=flutter


  //Creo una uri de archivo
  Uri uriArchivo = Uri.file('/path/to/local/file.txt');
  // Muestro las diferentes partes del URI
  print('Scheme: ${uriArchivo.scheme}'); // file
  print('Path: ${uriArchivo.path}'); // /path/to/local/file.txt

  //Creo una uri de telefono
  Uri uriTel = Uri.parse('tel:+1234567890');
  //Muestro sus partes
  print('Scheme: ${uriTel.scheme}'); // tel
  print('Path: ${uriTel.path}'); // +1234567890


  //Parseo una uri escrita como string
  String texto = 'https://www.example.com:8080/path/to/resource?query=flutter#section1';
  Uri uriParseada = Uri.parse(texto);
  //Muestro las partes de la uri
  print('Scheme: ${uriParseada.scheme}'); // https
  print('Host: ${uriParseada.host}'); // www.example.com
  print('Port: ${uriParseada.port}'); // 8080
  print('Path: ${uriParseada.path}'); // /path/to/resource
  print('Query: ${uriParseada.query}'); // query=flutter
  print('Fragment: ${uriParseada.fragment}'); // section1

  //Decodifico una uri con caracteres codificados
  String textoCodificado = 'https://www.google.com/search?q=hola%20mundo#resultados';
  String textoDecodificado = Uri.decodeFull(textoCodificado); // %20 lo transformo a espacio
  print('Original   : $textoCodificado');
  print('Decodificada: $textoDecodificado');
  Uri uriDecodificada = Uri.parse(textoDecodificado);
  //Muestro las partes de la uri
  print('Partes de la URI decodificada: ');
  print('scheme (protocolo) : ${uriDecodificada.scheme}');      // https
  print('host (servidor)    : ${uriDecodificada.host}');        // www.google.com
  print('path (ruta)        : ${uriDecodificada.path}');        // /search
  print('fragment (#)       : ${uriDecodificada.fragment}');    // resultados
  print('origin             : ${uriDecodificada.origin}');      // https://www.google.com
  print('query              : ${uriDecodificada.query}');       // q=hola mundo
  print('queryParameters    : ${uriDecodificada.queryParameters}'); // {q: hola mundo}



  //Construyo una uri parte por parte
  Uri construida = Uri(
    scheme: 'https',
    host: 'api.ejemplo.es',
    port: 8443,
    pathSegments: ['v1', 'usuarios', 'buscar'],
    queryParameters: {
      'q': 'dart uri',
      'page': '1',
    },
    fragment: 'inicio',
  
  );
  //Muestro las partes de la uri construida
    print('--- Partes de la URI construida ---');
  print('scheme (protocolo) : ${construida.scheme}');       // https
  print('host (servidor)    : ${construida.host}');         // api.ejemplo.es
  print('port (puerto)      : ${construida.port}');         // 8443
  print('path (ruta)        : ${construida.path}');         // /v1/usuarios/buscar
  print('fragment (#)       : ${construida.fragment}');     // inicio
  print('origin             : ${construida.origin}');       // https://api.ejemplo.es:8443
  print('query              : ${construida.query}');        // q=dart uri&page=1
  print('queryParameters    : ${construida.queryParameters}'); // {q: dart uri, page: 1}

  // Muestro la uri completa
  print(construida.toString());

}
