import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/cart/views/cart_view.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back), onPressed: () => Get.back()),
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
                InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    alignment: Alignment.center,
                    width: 206,
                    child: Text(
                      "On Going",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Container(
                  width: 205,
                  alignment: Alignment.center,
                  child: Text(
                    "History",
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
                            offset: Offset(1, 2))
                      ]),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Text(
                    "Toko Sapi Sehat",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/image/wagyu.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Daging Sapi 1 Kg",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      child: Text(
                        "1x",
                        style:
                            TextStyle(color: Color(0xFF7C7C7C), fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 0.5,
              width: 370,
              color: Color(0xFF9A9696),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: Text(
                "Order Total: 10 Points",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 2.5,
              color: Color(0xFF9A9696),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Text(
                    "Toko Sapi Sehat",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Image.asset("assets/image/wagyu.png"),
                ),
                SizedBox(
                  width: 12,
                ),
                Row(
                  children: [
                    Container(
                      child: Text(
                        "Daging Sapi 1 Kg",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Container(
                      child: Text(
                        "1x",
                        style:
                            TextStyle(color: Color(0xFF7C7C7C), fontSize: 15),
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 0.5,
              width: 370,
              color: Color(0xFF9A9696),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.centerRight,
              child: Text(
                "Order Total: 10 Points",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 2.5,
              color: Color(0xFF9A9696),
            )
          ],
        ));
  }
}
