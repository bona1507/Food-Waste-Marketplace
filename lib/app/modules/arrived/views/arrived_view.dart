import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/additional/views/additional_view.dart';
import 'package:troli_gsc/app/modules/sell1/views/sell1_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/arrived_controller.dart';

class ArrivedView extends StatefulWidget {
  const ArrivedView({Key? key}) : super(key: key);

  @override
  State<ArrivedView> createState() => _ArrivedViewState();
}

class _ArrivedViewState extends State<ArrivedView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Get.offAll(() => AdditionalView()))),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 40,
          ),
          Container(
            child: Image.asset("assets/image/throw.png"),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              width: 341,
              height: 70,
              child: Text(
                "Your Food Waste has Arrived Safely!",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 360,
            height: 59,
            child: Text(
              "Thank You for Participating to Make A Cleaner World.",
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 270,
          ),
          Container(
            width: 336,
            height: 50,
            // margin: EdgeInsetsDirectional.symmetric(vertical: 25),
            child: ElevatedButton(
              onPressed: () {
                AwesomeDialog(
                    context: context,
                    dialogType: DialogType.success,
                    dialogBackgroundColor: Colors.white,
                    animType: AnimType.topSlide,
                    title: "Congratulations",
                    titleTextStyle: TextStyle(fontSize: 24),
                    desc: "You got 12 points!",
                    descTextStyle: TextStyle(fontSize: 20),
                    btnOkOnPress: () => Get.offAll(() => Sell1View()),
                    btnOkColor: Color(0xFF384E20),
                    btnOkText: "Continue",
                    buttonsTextStyle: TextStyle(fontSize: 20)
                    //=> Get.offAllNamed(Routes.SELL1),
                    )
                  ..show();
              },
              child: Text(
                "Get Your Rewards",
                style: TextStyle(fontSize: 25),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  backgroundColor: Color(0xFF384E20)),
            ),
          ),
        ]),
      ),
    );
  }
}
