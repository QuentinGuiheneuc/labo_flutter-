// ignore_for_file: file_names, non_constant_identifier_names
import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:http/io_client.dart';
import 'dart:async';

Future<SecurityContext> get globalContext async {
  // Note: Not allowed to load the same certificate
  final sslCert1 = await rootBundle.load('assets/crt/quentinguiheneuc.fr.pem');
  SecurityContext sc = SecurityContext(withTrustedRoots: false);
  sc.setTrustedCertificatesBytes(sslCert1.buffer.asInt8List());
  return sc;
}

// ignore: non_constant_identifier_names
Future Api(String methode, String url, Map<String, String>? allheaders,
    Object? data) async {
  // ByteData data = await rootBundle.load('assets/crt/quentinguiheneuc.fr.crt');
  HttpClient _client = HttpClient(context: await globalContext);
  _client.badCertificateCallback =
      (X509Certificate cert, String host, int port) => true;
  var ioClient = IOClient(_client);
  var urlPropal =
      Uri.parse('https://dash.quentinguiheneuc.fr/Dashbord/API' + url);
  switch (methode) {
    case 'GET':
      var response = await ioClient.get(urlPropal, headers: allheaders);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    case 'POST':
      var response =
          await ioClient.post(urlPropal, headers: allheaders, body: data);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    case 'PUT':
      var response =
          await ioClient.put(urlPropal, headers: allheaders, body: data);
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    default:
  }
}

Future Apiroute() async {
  var response = await Api("GET", "/route.php", {}, {});
  print(response);
  return json.decode(response);
}
