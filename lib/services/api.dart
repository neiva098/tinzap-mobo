import 'package:http/http.dart' as http;

var client = http.Client();
const backEndUri = 'http://192.168.0.19:3333';

getUsers(String id) async {
  return await client.get(backEndUri, headers: {
    'user': id,
  });
}
