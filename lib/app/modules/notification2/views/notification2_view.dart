import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/notification2_controller.dart';

class Notification2View extends GetView<Notification2Controller> {
  const Notification2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Details'),
            centerTitle: true,
            backgroundColor: Color(0xFF384E20),
            leading: IconButton(
                icon: Icon(Icons.arrow_back), onPressed: () => Get.back())),
        body: Column(
          children: [
            Container(
              width: 428,
              height: 77,
              color: Color(0xFFCAD9BA),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: Text(
                          "Completed",
                          style: TextStyle(fontSize: 16),
                        )),
                        Container(
                          child: Text(
                            "Your Food Waste has Delivered to The Farm",
                            style: TextStyle(fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Image.asset("assets/logo/complete.png"),
                    )
                  ]),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 500,
              height: 100,
              //color: Colors.amber,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/weight.png"),
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text(
                            "1,2 Kg",
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/points.png"),
                        ),
                        SizedBox(height: 5),
                        Container(
                          child: Text(
                            "12 Points",
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
              color: Color(0xFFD9D9D9),
            ),
            Container(
              width: 428,
              height: 40,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("No. ID"),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Container(
                    child: Text("ABX0009872579N"),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFFD9D9D9),
            ),
            Container(
              width: 428,
              height: 40,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("No. ID"),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Container(
                    child: Text("ABX0009872579N"),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFFD9D9D9),
            ),
            Container(
              width: 428,
              height: 40,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text("No. ID"),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Container(
                    child: Text("ABX0009872579N"),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFFD9D9D9),
            ),
          ],
        ));
  }
}
