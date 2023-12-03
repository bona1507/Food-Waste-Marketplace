import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/buy/views/buy_view.dart';

import '../controllers/qris_controller.dart';
import 'package:time_remaining/time_remaining.dart';

class QrisView extends GetView<QrisController> {
  const QrisView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payments Details'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.off(() => BuyView())),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Center(
              child: Container(
                height: 40,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(9),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 8,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 4))
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Remaining payment time: ",
                      style: TextStyle(fontSize: 16),
                    ),
                    TimeRemaining(
                      duration: Duration(days: 1),
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 500,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade700,
                        spreadRadius: 1,
                        blurRadius: 2,
                        blurStyle: BlurStyle.outer,
                        offset: Offset(0, 1))
                  ]),
              child: Column(children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Text("173.000",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w900))),
                Container(
                  child: Image.asset("assets/image/qr.png"),
                ),
                Container(
                  child: Text(
                    "Accept payments through the application below:",
                    style: TextStyle(color: Color(0xFF6F6F6F)),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Image.asset("assets/logo/ovo.png"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Image.asset("assets/logo/shopee.png"),
                    ),
                    SizedBox(
                      width: 28,
                    ),
                    Container(
                      child: Image.asset("assets/logo/gopay.png"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text("and other merchants that accept QRIS",
                      style: TextStyle(color: Color(0xFF6F6F6F))),
                )
              ]),
            )
          ],
        ));
  }
}
