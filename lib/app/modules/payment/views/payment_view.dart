import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/cart/views/cart_view.dart';
import 'package:troli_gsc/app/modules/my_points/views/my_points_view.dart';
import 'package:troli_gsc/app/modules/qris/views/qris_view.dart';

import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Payment Details'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.to(() => CartView())),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              width: 412,
              height: 50,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Text(
                      "Total Payment",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    child: Text(
                      "173.000",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "My Payment Method",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: InkWell(
                onTap: () => Get.to(() => MyPointsView()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "My Points",
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Container(
                        child: Row(children: [
                          Container(
                            child: Text(
                              "50 pts",
                              style: TextStyle(fontSize: 14),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.arrow_forward_ios_rounded)
                        ]),
                      )
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Other Payment Methods",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/shopee.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ShopeePay",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(width: 90),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/gopay.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Gopay",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(width: 130),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/ovo.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "OVO",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(width: 196),
                    Icon(Icons.arrow_forward_ios_rounded),
                    SizedBox()
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Image.asset("assets/logo/va.png"),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Virtual Account",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    SizedBox(width: 50),
                    Icon(Icons.arrow_forward_ios_rounded)
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 48,
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
                        offset: Offset(0, 4))
                  ]),
              child: InkWell(
                onTap: () => Get.to(() => QrisView()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            child: Image.asset("assets/logo/qris.png"),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "QRIS",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      SizedBox(width: 130),
                      Icon(Icons.arrow_forward_ios_rounded)
                    ]),
              ),
            ),
          ],
        ));
  }
}
