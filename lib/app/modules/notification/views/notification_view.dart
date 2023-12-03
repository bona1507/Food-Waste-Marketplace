import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/notification2/views/notification2_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 428,
                height: 87,
                //color: Colors.amber,
                child: Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Image.asset("assets/logo/cart.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          "Your Food Waste is being Processed",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Image.asset("assets/logo/pending.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 175),
                            child: Text(
                              "Pending",
                              style: TextStyle(
                                  color: Color(0xFFABABAB), fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 165),
                        child: Text(
                          "01-03-2023 14:00",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xFF9A9696)),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ]),
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            Container(
              width: 428,
              height: 87,
              //color: Colors.amber,
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/logo/cart.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      child: Text(
                        "Your Food Waste is being Processed",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/pending.png"),
                        ),
                        Container(
                          padding: EdgeInsets.only(right: 175),
                          child: Text(
                            "Pending",
                            style: TextStyle(
                                color: Color(0xFFABABAB), fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(right: 165),
                      child: Text(
                        "01-03-2023 14:00",
                        style: TextStyle(fontSize: 8, color: Color(0xFF9A9696)),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 16),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Color(0xFFC2C2C2),
                  ),
                )
              ]),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            InkWell(
              onTap: () => Get.to(() => Notification2View()),
              child: Container(
                width: 428,
                height: 87,
                //color: Colors.amber,
                child: Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Image.asset("assets/logo/cart.png"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 15),
                      Container(
                        child: Text(
                          "Your Food Waste has Delivered",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Container(
                            child: Image.asset("assets/logo/complet.png"),
                          ),
                          Container(
                            padding: EdgeInsets.only(right: 130),
                            child: Text(
                              "Completed",
                              style: TextStyle(
                                  color: Color(0xFFABABAB), fontSize: 12),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.only(right: 130),
                        child: Text(
                          "01-03-2023 14:00",
                          style:
                              TextStyle(fontSize: 8, color: Color(0xFF9A9696)),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 50),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ]),
              ),
            ),
            Container(height: 1, color: Colors.grey)
          ],
        ));
  }
}
