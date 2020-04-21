import 'package:http/http.dart' as http;
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:convert';
var client = http.Client();
const backEndUri = 'http://192.168.0.16:3333';

apiGetUsers(String id) async {
  var response = await client.get('$backEndUri/users/getCrushs', headers: {
    'user': id,
  });

  return json.decode(response.body);
}

apiLogIn(String phone) async {
  return await client.post('$backEndUri/users/logIn/$phone');
}

apiLike(String target, String user) async {
  return await client.post('$backEndUri/users/likes/$target', headers: {
    'user': user
  });
}

apiDislike(String target, String user) async {
  return await client.post('$backEndUri/users/dislikes/$target', headers: {
    'user': user
  });
}

apiGetSocket(String id)  {
  return IO.io(backEndUri, {
    'query': {
      'user': id
    },
    'transports': ['websocket']
  });
}
