import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Home extends StatefulWidget {


  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flespi'),centerTitle: true,),
    body: WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
    //   WebviewScaffold(
    //   appBar: AppBar(title: Text('Flespi'),centerTitle: true,),
    //   url: "https://flespi.io/#/",
    //   hidden: false,
    //   initialChild: Container(
    //     child: const Center(
    //       child: Text('Waiting.....'),
    //     ),
    //   ),
    // );
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.

    flutterWebviewPlugin.dispose();

    super.dispose();
  }

}
