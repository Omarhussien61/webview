import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(title: Text('Flespi'),centerTitle: true,),
      url: "https://flespi.io/#/",
      hidden: false,
      initialChild: Container(
        child: const Center(
          child: Text('Waiting.....'),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.

    flutterWebviewPlugin.dispose();

    super.dispose();
  }

}
