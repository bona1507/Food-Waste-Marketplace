import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/login/views/login_view.dart';
import 'package:troli_gsc/app/modules/loginC/views/login_c_view.dart';

import '../controllers/ob2_controller.dart';

class Ob2View extends GetView<Ob2Controller> {
  const Ob2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3DD),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/logo/onboard2.png"),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Get.to(() => LoginView()),
                child: Text(
                  "User",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color(0xFF384E20),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () => Get.to(() => LoginCView()),
                child: Container(
                  alignment: Alignment.center,
                  width: 160,
                  height: 60,
                  child: Text(
                    "Courier",
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: Color(0xFFF9F3DD),
                      border: Border.all(color: Color(0XFF384E20), width: 2)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
