import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/address/views/address_view.dart';
import 'package:troli_gsc/app/modules/frozen_food/views/frozen_food_view.dart';
import 'package:troli_gsc/app/modules/history/views/history_view.dart';
import 'package:troli_gsc/app/modules/payment/views/payment_view.dart';

import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.to(() => FrozenFoodView())),
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
                  onTap: () => Get.to(() => HistoryView()),
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
              height: 6,
            ),
            Container(
              height: 100,
              width: 412,
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
                        offset: Offset(0, 4))
                  ]),
              // color: Colors.amber,
              child: InkWell(
                onTap: () {},
                child: Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 100,
                    width: 350,
                    //color: Colors.black,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Address",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            "12 Sigura-gura Street, Block III, Penanggungan,",
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            style: TextStyle(color: Color(0xFF5B5656)),
                          ),
                          Text("Kota Malang 80111 ID",
                              style: TextStyle(color: Color(0xFF5B5656)))
                        ]),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 60,
              //color: Colors.amber,
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/image/belfoods.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Belfoods",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset("assets/logo/kurang.png"),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("2",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)),
                              ),
                              Container(
                                child: Image.asset("assets/logo/tambah.png"),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  child: Text(
                    "70.000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                )
              ]),
            ),
            Container(
              height: 1,
              width: 380,
              color: Color(0x4D413E3E),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 60,
              //color: Colors.amber,
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/image/kanzler.png"),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kanzler",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset("assets/logo/kurang.png"),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("1",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)),
                              ),
                              Container(
                                child: Image.asset("assets/logo/tambah.png"),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  child: Text(
                    "45.000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                )
              ]),
            ),
            Container(
              height: 1,
              width: 380,
              color: Color(0x4D413E3E),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 60,
              //color: Colors.amber,
              child: Row(children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/image/bernardi.png"),
                ),
                SizedBox(
                  width: 14,
                ),
                Container(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bernardi",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w900),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Image.asset("assets/logo/kurang.png"),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text("1",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900)),
                              ),
                              Container(
                                child: Image.asset("assets/logo/tambah.png"),
                              )
                            ],
                          ),
                        )
                      ]),
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  child: Text(
                    "56.000",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                )
              ]),
            ),
            Container(
              height: 1,
              width: 380,
              color: Color(0x4D413E3E),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Shipment",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Instant",
                      style: TextStyle(fontSize: 15, color: Color(0xFF5B5656)),
                    )
                  ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Subtotal",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "171.000",
                      style: TextStyle(fontSize: 15, color: Color(0xFF5B5656)),
                    )
                  ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Shipping Charges",
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      width: 56,
                    ),
                    Text(
                      "2.000",
                      style: TextStyle(fontSize: 15, color: Color(0xFF5B5656)),
                    )
                  ]),
            ),
            Container(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Total",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "173.000",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF5B5656),
                          fontWeight: FontWeight.w900),
                    )
                  ]),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              width: 336,
              height: 50,
              margin: EdgeInsetsDirectional.only(top: 20),
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => PaymentView()),
                child: Text(
                  "Checkout",
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
