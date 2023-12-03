import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/courier/views/courier_view.dart';
import 'package:troli_gsc/app/modules/homeC/views/home_c_view.dart';

import '../controllers/pengantaran_controller.dart';

class PengantaranView extends GetView<PengantaranController> {
  const PengantaranView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Package Details'),
          centerTitle: true,
          backgroundColor: Color(0xFF362706),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.offAll(() => HomeCView()),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            InkWell(
              onTap: () => Get.to(() => CourierView()),
              child: Container(
                  child: Image.asset(
                "assets/image/map.png",
              )),
            ),
            Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                width: 439,
                height: 111,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Bonaventura Julio - 081234567890",
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          child: Image.asset("assets/logo/pesantelpon.png"),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: 387,
                      child: Text(
                        "Graha Mukti Residence Street, Tlogomulyo, Pedurungan, Semarang, Central Java 50113",
                        style: TextStyle(color: Color(0xFF999696)),
                        maxLines: 2,
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 380,
              height: 0.5,
              color: Color(0xFF9A9696),
            ),
            Container(
              width: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        child: Image.asset("assets/logo/waktu.png"),
                      ),
                      Text("23 Minutes")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset("assets/logo/berat.png"),
                      ),
                      Text("1,2 Kg")
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset("assets/logo/poins.png"),
                      ),
                      Text("12 Points")
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
