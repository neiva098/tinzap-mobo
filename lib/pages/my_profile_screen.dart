import 'dart:io';

import 'package:flutter/material.dart';
import 'package:keyboard_visibility/keyboard_visibility.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tinzap/pages/utils/avatarBorded.dart';
import 'package:tinzap/pages/utils/ensure_visible.dart';
import './home.dart';

class ProfileScreen extends StatefulWidget {
  @override
  ProfileScreenState createState() {
    return new ProfileScreenState();
  }
}

class ProfileScreenState extends State<ProfileScreen> {
  String status;
  String description = '';
  File photo;
  FocusNode focusNodeDescription = new FocusNode();
  ScrollController scrollController = new ScrollController();

  void choosePhoto() async {
    File localPhoto = await ImagePicker.pickImage(source: ImageSource.gallery);
    focusNodeDescription.nextFocus();
    setState(() {
      photo = localPhoto;
    });
  }

  @override
  void initState() {
    super.initState();

    KeyboardVisibilityNotification().addNewListener(
      onChange: (bool visible) {
        if (!visible) {
          scrollController.animateTo(scrollController.position.minScrollExtent,
              duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Perfil'),
        elevation: 0.7,
      ),
      body: SingleChildScrollView(
        controller: scrollController,
        physics: NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    height: MediaQuery.of(context).size.height,
                    color: Colors.white,
                    margin: const EdgeInsets.only(
                        left: 10.0, right: 10.0, top: 10.0),
                    child: Form(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              BordedCircleAvatar(photo == null
                                  ? AssetImage('assets/noPhoto.png')
                                  : FileImage(photo)),
                              FloatingActionButton(
                                backgroundColor: Colors.red,
                                child: Icon(
                                  Icons.photo_library,
                                  color: Colors.white,
                                ),
                                onPressed: choosePhoto,
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                                hintText:
                                    'Digite um status, para que os outros vejam.',
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(),
                                )),
                          ),
                          SizedBox(height: 10),
                          EnsureVisibleWhenFocused(
                              child: TextField(
                                maxLines: 8,
                                focusNode: focusNodeDescription,
                                decoration: InputDecoration(
                                    hintText:
                                        'Se quiser, digite uma descrição sobre você',
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(25.0),
                                      borderSide: new BorderSide(),
                                    )),
                              ),
                              focusNode: focusNodeDescription),
                          RaisedButton(
                              onPressed: () {
                                Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => TinzapHome()),
                                    (Route<dynamic> route) => false);
                              },
                              child: Text('Ok!'),
                              color: Colors.red,
                              hoverColor: Colors.white,
                              textColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(30.0)))
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
