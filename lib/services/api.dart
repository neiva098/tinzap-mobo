import 'package:http/http.dart' as http;
import 'package:socket_io_client/socket_io_client.dart' as IO;

var client = http.Client();
const backEndUri = 'http://192.168.0.19:3333';

apiGetUsers(String id) async {
  return await client.get('$backEndUri/devs', headers: {
    'user': id,
  });
}

apiLogIn(String name) async {
  return await client.post('$backEndUri/devs', body: {
    'name': name
  });
}

apiLike(String id, String matchId) async {
  return await client.post('$backEndUri/devs/like/$id', headers: {
    'user': matchId
  });
}

apiDislike(String id, String matchId) async {
  return await client.post('$backEndUri/devs/dislike/$id', headers: {
    'user': matchId
  });
}

apiGetSocket(String id) async {
  return IO.io(backEndUri, {
    'query': {
      'user': id
    },
    'transports': ['websocket']
  });
}
