import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/buy/views/buy_view.dart';
import 'package:troli_gsc/app/modules/history/views/history_view.dart';

import '../controllers/empty_cart_controller.dart';

class EmptyCartView extends GetView<EmptyCartController> {
  const EmptyCartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.to(() => BuyView())),
          actions: <Widget>[
            InkWell(
              onTap: () {},
              child: Container(
                child: Image.asset("assets/image/keranjang.png"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              width: 412,
              height: 45,
              // color: Colors.amber,
              child: Row(children: [
                Container(
                  alignment: Alignment.center,
                  width: 206,
                  child: Text(
                    "On Going",
                    style: TextStyle(fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      // borderRadius: BorderRadius.circular(9),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 8,
                            blurStyle: BlurStyle.inner,
                            offset: Offset(-1, 2))
                      ]),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: 205,
                    alignment: Alignment.center,
                    child: Text(
                      "History",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 6),
              child: Image.asset("assets/image/empty.png"),
            ),
            Container(
              child: Text(
                "Your cart is empty",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 300,
              child: Text(
                "There is no order at the moment to buy some items",
                style: TextStyle(fontSize: 18, color: Color(0xFF9A9696)),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ));
  }
}
