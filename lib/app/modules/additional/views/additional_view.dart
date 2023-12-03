import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/arrived/views/arrived_view.dart';
import 'package:troli_gsc/app/modules/sell3/views/sell3_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/additional_controller.dart';

class AdditionalView extends GetView<AdditionalController> {
  const AdditionalView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Additional'),
            centerTitle: true,
            backgroundColor: Color(0xFF384E20),
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Get.offAll(() => Sell3View()))),
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                //margin: EdgeInsets.symmetric(horizontal: 30),
                alignment: Alignment.center,
                child: Image.asset("assets/image/limbah.png"),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 40),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Dear Nanda,",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  "Thank you for taking a part in our mission to process food waste! Your contribution means a lot to the world. We have calculated your waste’s weights and you will get your points as a reward. Please wait for transaction. Your food waste will contribute to the sustainibility of farm ecosystem. We have acquisitied farm animals and maggots farm communities. We will process your food waste to our maggots at first before it will be distributed to our farm animals! We are delighted to collaborate with you. Have a nice day!",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 13),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 8),
                width: 357,
                height: 30,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Color(0x4D413E3E))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text("Weight")),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "1,2 kilograms",
                            style: TextStyle(color: Color(0xFF5B5656)),
                          )),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                width: 357,
                height: 30,
                //color: Colors.amber,
                decoration: BoxDecoration(
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(9),
                    border: Border.all(color: Color(0x4D413E3E))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text("Points")),
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "12",
                            style: TextStyle(color: Color(0xFF5B5656)),
                          )),
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text(
                  "You have contributed!",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.only(right: 20),
                      child: CircularPercentIndicator(
                        radius: 38,
                        lineWidth: 14,
                        percent: 0.50,
                        progressColor: Color(0xFF384E20),
                        backgroundColor: Color(0x33486B21),
                        circularStrokeCap: CircularStrokeCap.round,
                        center: const Text(
                          "15%",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w800),
                        ),
                      )),
                  Container(
                    width: 238,
                    height: 60,
                    child: Text(
                      "You’re one step ahead! Keep moving forward to be a part of environmental sustainibility warriors!",
                      maxLines: 3,
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
              Container(
                width: 336,
                height: 50,
                margin: EdgeInsetsDirectional.symmetric(vertical: 25),
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => ArrivedView()),
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      backgroundColor: Color(0xFF384E20)),
                ),
              ),
            ],
          ),
        ));
  }
}
