import 'dart:convert'; // propias de dart

import 'package:http/http.dart' as http; // De terceros
import 'package:paquetes/classes/pais.dart';
import 'package:paquetes/classes/reqres_respuesta.dart';

void getReqResp_service() {
  final url = Uri.parse('https://reqres.in/api/users?page=2');

  http.get(url).then((res) {
    // print(res);
    // final body = jsonDecode(res.body);
    // print(body);

    // print('page: ${body['page']}');
    // print('per_page: ${body['per_page']}');
    // print('id del tercer elemento: ${body['data'][2]['id']}');
    final resReqRes = reqResRespuestaFromJson(res.body);

    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}

// Tarea :

void getBssdArg() {
  final url = Uri.parse('https://restcountries.com/v2/alpha/arg');

  http.get(url).then((res) {
    final pais = paisFromJson(res.body);

    // final a = 10;
    print("==========================================");
    print('Pais: ${pais.name}');
    print('Poblacion: ${pais.population}');
    print('Fronteras: ');
    pais.borders.forEach((pais) {
      print('\t${pais}');
    });
    print('Languages: ${pais.languages[0].nativeName}');
    print('Latitud: ${pais.latlng[0]}');
    print('Longitud: ${pais.latlng[1]}');
    print('Moneda: ${pais.currencies[0].name}');
    print('Bandera: ${pais.flag}');
    print("==========================================");
  }).catchError((error) => print(error));
}
