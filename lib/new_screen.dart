import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

class NewScreen extends StatefulWidget {
  const NewScreen({ Key key }) : super(key: key);

  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  Uint8List _bytesImage;
  @override
  Widget build(BuildContext context) {
    final arguement = ModalRoute.of(context).settings.arguments;
    _bytesImage = Base64Decoder().convert(arguement);

    return Scaffold(
      body: Container(
        child: Image.memory(_bytesImage),
      )
    );
  }
}