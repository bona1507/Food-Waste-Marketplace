import 'package:flutter/material.dart';

class onboard1 extends StatefulWidget {
  const onboard1({super.key});

  @override
  State<onboard1> createState() => _onboard1State();
}

class _onboard1State extends State<onboard1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF9F3DD),
        body: Center(
          child: Container(
            alignment: Alignment(0, -1),
            child: Image.asset("assets/logo/onboard1.png"),
          ),
        ),
      ),
    );
  }
}
