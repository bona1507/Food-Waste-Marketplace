import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/ob1_controller.dart';

class Ob1View extends GetView<Ob1Controller> {
  const Ob1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3DD),
      body: Center(
        child: Container(
          alignment: Alignment(0, -1),
          child: Image.asset("assets/logo/onboard1.png"),
        ),
      ),
    );
  }
}
