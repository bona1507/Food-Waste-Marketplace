import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loadingpage extends StatelessWidget {
  const loadingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFF9F3DD),
        body: Center(
          child: Container(
            width: Get.width * 0.5,
            height: Get.width * 0.5,
            child: Image.asset("assets/logo/loadscreen.png"),
          ),
        ),
      ),
    );
  }
}
