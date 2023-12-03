import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/homeC/views/home_c_view.dart';
import 'package:troli_gsc/app/modules/profileC/views/profile_c_view.dart';

import '../controllers/home_c2_controller.dart';

class HomeC2View extends GetView<HomeC2Controller> {
  const HomeC2View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              Stack(
                children: [
                  Container(child: Image.asset("assets/image/elips.png")),
                  Container(
                      width: 370,
                      height: 100,
                      // color: Colors.amber,
                      margin: EdgeInsets.only(left: 30, top: 60),
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              "assets/image/putra.png",
                              width: 58,
                              height: 58,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome back,",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                              Text(
                                "Putra!",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 170,
                          ),
                          InkWell(
                            onTap: () => Get.to(() => ProfileCView()),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                            ),
                          )
                        ],
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 165),
                    width: 390,
                    height: 42,
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.bottom,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(color: Colors.white)),
                          hintText: 'Enter Track ID Number',
                          labelStyle: TextStyle(color: Color(0xFF9A9696)),
                          suffixIcon: Icon(Icons.search),
                          suffixIconColor: Colors.black),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10, top: 235),
                    width: 390,
                    height: 53,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Color(0xFFB9B3A8)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 6,
                        ),
                        InkWell(
                            onTap: () => Get.to(() => HomeCView()),
                            child: Container(
                              width: 190,
                              height: 43,
                              alignment: Alignment.center,
                              child: Text("On Progress",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black)),
                            )),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Completed",
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF362706),
                              fixedSize: Size(190, 43)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 390,
                height: 157,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 8,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 2))
                    ]),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text("901435627397444",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 142,
                        height: 30,
                        child: Text(
                          "Completed",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF362706),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Troli",
                      style: TextStyle(fontSize: 13, color: Color(0xFF9A9696)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    width: 350,
                    height: 1,
                    color: Color(0xFF9A9696),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Bonaventura Julio ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "| 081234567890",
                        style:
                            TextStyle(color: Color(0xFF9A9696), fontSize: 15),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 4),
                    child: Text(
                      "Graha Mukti Residence Street, Tlogomulyo, Pedurungan, Semarang, Central Java 50113",
                      style: TextStyle(color: Color(0xFF9A9696)),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 390,
                height: 157,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 8,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 2))
                    ]),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text("901435627397444",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 142,
                        height: 30,
                        child: Text(
                          "Completed",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF362706),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Troli",
                      style: TextStyle(fontSize: 13, color: Color(0xFF9A9696)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    width: 350,
                    height: 1,
                    color: Color(0xFF9A9696),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Bonaventura Julio ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "| 081234567890",
                        style:
                            TextStyle(color: Color(0xFF9A9696), fontSize: 15),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 4),
                    child: Text(
                      "Graha Mukti Residence Street, Tlogomulyo, Pedurungan, Semarang, Central Java 50113",
                      style: TextStyle(color: Color(0xFF9A9696)),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 390,
                height: 157,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          spreadRadius: 1,
                          blurRadius: 8,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(0, 2))
                    ]),
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Text("901435627397444",
                            style: TextStyle(fontSize: 15)),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 142,
                        height: 30,
                        child: Text(
                          "Completed",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Color(0xFF362706),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Troli",
                      style: TextStyle(fontSize: 13, color: Color(0xFF9A9696)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 4),
                    width: 350,
                    height: 1,
                    color: Color(0xFF9A9696),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 25,
                      ),
                      Text(
                        "Bonaventura Julio ",
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "| 081234567890",
                        style:
                            TextStyle(color: Color(0xFF9A9696), fontSize: 15),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, top: 4),
                    child: Text(
                      "Graha Mukti Residence Street, Tlogomulyo, Pedurungan, Semarang, Central Java 50113",
                      style: TextStyle(color: Color(0xFF9A9696)),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ));
  }
}
