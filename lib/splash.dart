import 'dart:async';

import 'package:app1/home.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
    return Scaffold(
      body: Center(
        child: Text('Fitness Trackig App'),
      ),
    );
  }
}
