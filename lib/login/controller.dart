import '../API.dart';

Future Apilogin() async {
  return Api('GET', '/login.php', {}, {});
}

Future ApiGET() async {}
