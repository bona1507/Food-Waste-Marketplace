import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/additional/views/additional_view.dart';
import 'package:troli_gsc/app/modules/sell2/views/sell2_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/sell3_controller.dart';

class Sell3View extends GetView<Sell3Controller> {
  const Sell3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tracking'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.offAll(() => Sell2View()),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () => Get.offAll(() => AdditionalView()),
                child: Container(
                    child: Image.asset(
                  "assets/image/map.png",
                )),
              ),
              Container(
                height: 1.5,
                color: Colors.black,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: 439,
                height: 62,
                //color: Colors.amber,
                // decoration: BoxDecoration(
                //     //color: Colors.amber,
                //     border: Border.all(color: Colors.black, width: 2)),
                child: Text(
                  "ABX0009872579N",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 1.5,
                color: Colors.black,
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  "Courier's Tracker",
                  style: TextStyle(color: Color(0x4D000000), fontSize: 14),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: Text(
                  "0h 12m",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Image.asset("assets/image/kurir.png"),
                  ),
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(right: 56),
                          child: Text(
                            "Courier is on the way",
                            style: TextStyle(fontSize: 13),
                          )),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 86),
                        child: Text(
                          "Sulfat, Malang",
                          style: TextStyle(color: Color(0x4D000000)),
                        ),
                      )
                    ],
                  ),
                  Text(
                    "10.20PM",
                    style: TextStyle(color: Color(0x4D000000)),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
