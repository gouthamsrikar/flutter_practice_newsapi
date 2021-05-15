import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Webviewscreen extends StatelessWidget {
  static const routename = '/webview';
  final String url;
  Webviewscreen(this.url);
  @override
  Widget build(BuildContext context) {
    //  final String url = ModalRoute.of(context).settings.arguments as String;
    print(url);
    return Scaffold(
        body: Container(
      child: WebviewScaffold(
        url: url,
        withZoom: true,
        withLocalStorage: true,
      ),
    ));
  }
}
