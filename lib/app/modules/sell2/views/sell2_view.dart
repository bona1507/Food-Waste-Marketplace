import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/sell1/views/sell1_view.dart';
import 'package:troli_gsc/app/modules/sell3/views/sell3_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/sell2_controller.dart';

class Sell2View extends StatefulWidget {
  const Sell2View({Key? key}) : super(key: key);

  @override
  State<Sell2View> createState() => _Sell2ViewState();
}

class _Sell2ViewState extends State<Sell2View> {
  String type = "I'm a Business";
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text("Selling Your Food Waste"),
          centerTitle: true,
          backgroundColor: Color(0xFF384E20),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Get.offAll(() => Sell1View()),
          ),
        ),
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              Center(
                  child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                //width: 199,
                //height: 193.82,
                //color: Colors.amber,
                child: Image.asset(
                  "assets/image/persentase.png",
                  width: 250,
                  height: 240,
                ),
              )),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    //suffixIcon: new Icon(Icons.email),
                    hintText: "Why do you want to sell?",
                    counterText: "*required",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide:
                            BorderSide(width: 1, color: Color(0x4D000000))),
                    // labelText: 'Why do you want to sell?',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    //suffixIcon: new Icon(Icons.email),
                    hintText: "Where does this waste from?",
                    counterText: "*required",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide:
                            BorderSide(width: 1, color: Color(0x4D000000))),
                    // labelText: 'Why do you want to sell?',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    //suffixIcon: new Icon(Icons.email),
                    hintText:
                        "Have you ever contributed in processing food waste?",
                    hintMaxLines: 2,
                    counterText: "*required",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide:
                            BorderSide(width: 1, color: Color(0x4D000000))),
                    // labelText: 'Why do you want to sell?',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    //suffixIcon: new Icon(Icons.email),
                    hintText: "Please input bank account number",
                    counterText: "*required",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(9),
                        borderSide:
                            BorderSide(width: 1, color: Color(0x4D000000))),
                    // labelText: 'Why do you want to sell?',
                  ),
                ),
              ),
              RadioListTile(
                value: "I'm a Business",
                title: Text("I'm a Business"),
                groupValue: type,
                onChanged: (value) {
                  setState(() {
                    type = value.toString();
                  });
                },
                activeColor: Colors.black,
              ),
              RadioListTile(
                value: "I'm a Individual",
                title: Text("I'm a Individual"),
                groupValue: type,
                onChanged: (value) {
                  setState(() {
                    type = value.toString();
                  });
                },
                activeColor: Colors.black,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                      activeColor: Colors.black,
                    ),
                    Text(
                      "I Agree to the Term and Conditions of CYBRIC Policies",
                      style: TextStyle(fontSize: 10, color: Colors.grey),
                    )
                  ],
                ),
              ),
              Container(
                width: 336,
                height: 50,
                margin: EdgeInsetsDirectional.only(bottom: 20),
                child: ElevatedButton(
                  onPressed: () => Get.to(() => Sell3View()),
                  child: Text(
                    "Pick Up",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      backgroundColor: Color(0xFF384E20)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ));
  }
}
