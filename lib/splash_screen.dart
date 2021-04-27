import 'dart:async';

import 'package:flespi/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

  Timer(Duration(seconds: 5), () => _auth());


    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
     //   backgroundColor: Provider.of<Provider_control>(context).getColor(),
        body: Center(
          child:  SvgPicture.asset(
                 'assets/images/logo.svg',
            height: 200,
          ),
        )
        );
  }

  void _auth() async {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                Home()));
  }
}
