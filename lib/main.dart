import 'package:flutter/material.dart';
import 'package:newsapi/home_Screen.dart';
import 'package:newsapi/webview_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Newsapk',
      home: Homescreen(),
      // routes: {Webviewscreen.routename: (ctx) => Webviewscreen()},
    );
  }
}
