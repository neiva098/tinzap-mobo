import 'package:http/http.dart' as http;
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:convert';
var client = http.Client();
const backEndUri = 'http://192.168.0.16:3333';

apiGetUsers(String id) async {
  var response = await client.get('$backEndUri/devs', headers: {
    'user': id,
  });

  return json.decode(response.body);
}

apiLogIn(String name) async {
  return await client.post('$backEndUri/devs', body: {
    'name': name
  });
}

apiLike(String id, String matchId) async {
  return await client.post('$backEndUri/devs/likes/$id', headers: {
    'user': matchId
  });
}

apiDislike(String id, String matchId) async {
  return await client.post('$backEndUri/devs/dislikes/$id', headers: {
    'user': matchId
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
