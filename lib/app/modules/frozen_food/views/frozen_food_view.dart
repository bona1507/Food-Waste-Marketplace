import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/buy/views/buy_view.dart';
import 'package:troli_gsc/app/modules/cart/views/cart_view.dart';

import '../controllers/frozen_food_controller.dart';

class FrozenFoodView extends GetView<FrozenFoodController> {
  const FrozenFoodView({Key? key}) : super(key: key);
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
              onPressed: () => Get.to(() => BuyView())),
          actions: <Widget>[
            InkWell(
              onTap: () => Get.to(() => CartView()),
              child: Container(
                child: Image.asset("assets/image/keranjang.png"),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                "Top Categories of Frozen Food",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 220),
              width: 148,
              height: 41,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset("assets/image/ngt.png"),
                  ),
                  Container(
                    child: Text(
                      "Nugget",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/nugget.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Belfoods",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "35.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/nugget.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Belfoods",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "35.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/nugget.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Belfoods",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "35.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/nugget.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Belfoods",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "35.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 220),
              width: 148,
              height: 41,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset("assets/image/sosis.png"),
                  ),
                  Container(
                    child: Text(
                      "Sausage",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/kanzler.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Kanzler",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "45.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/kanzler.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Kanzler",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "45.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/kanzler.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Kanzler",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "45.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/kanzler.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Kanzler",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "45.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(right: 220),
              width: 148,
              height: 41,
              //color: Colors.amber,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 1,
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Image.asset("assets/image/bakso.png"),
                  ),
                  Container(
                    child: Text(
                      "Meatball",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: SizedBox(
                  height: 130,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/bernardi.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Bernardi",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "56.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/bernardi.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Bernardi",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "56.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/bernardi.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Bernardi",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "56.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                      Container(
                          width: 130,
                          height: 127,
                          margin: EdgeInsets.only(left: 10, bottom: 2),
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
                                    offset: Offset(0, 2))
                              ]),
                          child: Column(
                            children: [
                              Container(
                                width: 77,
                                height: 71,
                                child: Image.asset("assets/image/bernardi.png"),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "Bernardi",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Container(
                                      child: Text(
                                    "56.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900),
                                  )),
                                  Container(
                                    child: Text(
                                      "/500gr",
                                      style: TextStyle(fontSize: 7),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AwesomeDialog(
                                          context: context,
                                          dialogType: DialogType.success,
                                          dialogBackgroundColor: Colors.white,
                                          animType: AnimType.topSlide,
                                          title: "Success!",
                                          titleTextStyle:
                                              TextStyle(fontSize: 24),
                                          desc: "Your item succesfully added",
                                          descTextStyle:
                                              TextStyle(fontSize: 20),
                                          btnOkOnPress: () => {},
                                          btnOkColor: Color(0xFF384E20),
                                          btnOkText: "Ok",
                                          buttonsTextStyle:
                                              TextStyle(fontSize: 20))
                                        ..show();
                                    },
                                    child:
                                        Image.asset("assets/logo/tambah.png"),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  )),
            ),
          ],
        ));
  }
}
