import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_points_controller.dart';

class MyPointsView extends GetView<MyPointsController> {
  const MyPointsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Points'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back), onPressed: () => Get.back()),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: 360,
              height: 110,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1.5,
                        blurRadius: 9,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 3))
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "My Points",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "50",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        child: Image.asset(
                          "assets/logo/equals.png",
                        ),
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Equals Rp50",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xFF5B5656)),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              height: 230,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFFC2C2C2),
                      spreadRadius: 1,
                      blurRadius: 1,
                      blurStyle: BlurStyle.inner,
                    )
                  ]),
              child: Column(children: [
                Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Text("What's My Points"),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(child: Image.asset("assets/logo/equal.png")),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "1 My Points equals Rp1.",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(child: Image.asset("assets/logo/bulet.png")),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "My Points can be earned when you’ve sold food waste.",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(child: Image.asset("assets/logo/bulet.png")),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "You can use My Points as a payment method.",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(child: Image.asset("assets/logo/bulet.png")),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "My Points can’t be cashed out.",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Container(child: Image.asset("assets/logo/bulet.png")),
                      SizedBox(
                        width: 6,
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          "My Points will expire on 31 December of the next year after you receive them.",
                          style: TextStyle(fontSize: 10),
                          maxLines: 2,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 360,
              height: 180,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        spreadRadius: 1.5,
                        blurRadius: 9,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 1))
                  ]),
              child: Column(children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 320,
                  height: 30,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Get More Points"),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xFF9A9696),
                          size: 15,
                        )
                      ]),
                ),
                SizedBox(
                  height: 2,
                ),
                Container(
                  width: 320,
                  height: 120,
                  //color: Colors.amber,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Image.asset("assets/logo/morepoints.png"),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          width: 210,
                          child: Text(
                            "The food waste will later be processed as maggot feed which will be useful for farm animals. Troli will acquire farms that need maggot as feed.  Users who collect food waste will get points or rewards that can be redeemed as product prices in the application.",
                            style: TextStyle(fontSize: 10),
                            maxLines: 7,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ]),
                )
              ]),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              width: 336,
              height: 50,
              margin: EdgeInsetsDirectional.only(top: 20),
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => {}),
                child: Text(
                  "Use My Points",
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    backgroundColor: Color(0xFF384E20)),
              ),
            ),
          ],
        ));
  }
}
