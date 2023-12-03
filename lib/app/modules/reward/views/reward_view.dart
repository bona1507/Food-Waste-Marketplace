import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reward_controller.dart';

class RewardView extends GetView<RewardController> {
  const RewardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Reward'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back), onPressed: () => Get.back()),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "+10 Points",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
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
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        "+10 Points",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ));
  }
}
