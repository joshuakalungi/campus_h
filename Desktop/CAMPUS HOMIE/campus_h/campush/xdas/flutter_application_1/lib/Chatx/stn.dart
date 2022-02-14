import 'package:flutter/material.dart';
import 'package:flutter_application_1/HOME/chat/chat.dart';
import 'package:flutter_application_1/main.dart';

class stn extends StatefulWidget {
  const stn({Key? key}) : super(key: key);

  @override
  _stnState createState() => _stnState();
}

class _stnState extends State<stn> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  void openSplash() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => ChannelListPage()));
  }
}
