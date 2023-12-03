import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/about_controller.dart';

class AboutView extends GetView<AboutController> {
  const AboutView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("About Troli"),
        centerTitle: true,
        backgroundColor: Color(0xFF384E20),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            //color: Colors.amber,
            width: 333,
            height: 352,
            child: Image.asset("assets/image/siklus.png"),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                child: Image.asset("assets/logo/logowarna.png"),
              ),
              Container(
                padding: EdgeInsets.only(top: 0),
                margin: EdgeInsets.only(top: 2, right: 1, left: 1),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(9)),
                child: Text(
                  "Troli merupakan marketplace yang didukung dengan fitur pengumpulan limbah makanan yang dapat dilakukan oleh pengguna. Limbah makanan ini nantinya akan diolah sebagai pakan maggot yang nantinya akan bermanfaat untuk hewan-hewan ternak. Dimana Troli akan mengakusisi peteranakan yang sekiranya membutuhkan maggot sebagai pakannya. Dikarenakan maggot ini sangat bernutrisi jika dikonsumsi oleh hewan-hewan ternak. Hal ini dapat meningkatkan kualitas hasil ternaknya. Pengguna yang mengumpulkan limbah makanan anntinya akan mendapatkan poiint atau reaward yang dapat ditukarkan sebagai harga produk dalam aplikasi Troli.",
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
