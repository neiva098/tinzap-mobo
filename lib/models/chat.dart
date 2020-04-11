
import 'dart:convert';
import 'dart:typed_data';

class User {
  String name;
  String telephone;
  String photo;

  User(this.name, this.telephone, this.photo);

  Uint8List mountImage() {
    return base64Decode(photo);
  }
}

class Message {
  String text;
  String dateTime;
  User sender;
  User receiver;

  Message(this.text, this.dateTime, this.sender, this.receiver);
}
