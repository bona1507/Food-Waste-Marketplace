import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/homeC/views/home_c_view.dart';

import '../controllers/courier_controller.dart';

class CourierView extends GetView<CourierController> {
  const CourierView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Package Details'),
          centerTitle: true,
          backgroundColor: Color(0xFF362706),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              child: Image.asset("assets/logo/courier.png"),
            ),
            Text(
              "Mission Completed!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 80),
            Container(
              width: 336,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => HomeCView()),
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color(0xFF362706),
                  // padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
          ],
        ));
  }
}
