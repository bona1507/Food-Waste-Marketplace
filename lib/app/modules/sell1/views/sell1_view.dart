import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/home/views/home_view.dart';
import 'package:troli_gsc/app/modules/sell2/views/sell2_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/sell1_controller.dart';

class Sell1View extends GetView<Sell1Controller> {
  const Sell1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "assets/logo/logo.png",
            width: 36,
            height: 47,
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.offAll(() => HomeView()),
          ),
        ),
        body: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.only(bottom: 50),
                width: 237,
                height: 237,
                //color: Colors.amber,
                child: Image.asset("assets/image/man.png"),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 20),
                width: 262,
                height: 70,
                child: Text(
                  "What Do You Want to Sell?",
                  style: TextStyle(fontSize: 26),
                  textAlign: TextAlign.center,
                )),
            ElevatedButton(
              onPressed: () => Get.to(() => Sell2View()),
              child: Container(
                child: Center(
                  child: Text(
                    "Food Waste",
                    style: TextStyle(
                      color: Color(0xFF384E20),
                      fontSize: 16,
                    ),
                  ),
                ),
                width: 147,
                height: 42,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(0xFF384E20), width: 1.5)),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 0)),
            )
          ],
        ));
  }
}
