import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/empty_cart/views/empty_cart_view.dart';
import 'package:troli_gsc/app/modules/frozen_food/bindings/frozen_food_binding.dart';
import 'package:troli_gsc/app/modules/frozen_food/views/frozen_food_view.dart';
import 'package:troli_gsc/app/modules/home/views/home_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/buy_controller.dart';

class BuyView extends StatefulWidget {
  const BuyView({Key? key}) : super(key: key);

  @override
  State<BuyView> createState() => _BuyViewState();
}

class _BuyViewState extends State<BuyView> {
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
              onPressed: () => Get.off(() => HomeView())),
          actions: <Widget>[
            InkWell(
              onTap: () => Get.to(() => EmptyCartView()),
              child: Container(
                child: Image.asset("assets/image/keranjang.png"),
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          reverse: false,
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Center(
                child: Container(
                  child: Image.asset("assets/image/highlight.png"),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: 390,
                height: 42,
                child: TextFormField(
                  textAlignVertical: TextAlignVertical.bottom,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                          borderSide: BorderSide(color: Color(0xFFD9D9D9))),
                      hintText: 'What do you want?',
                      labelStyle: TextStyle(color: Color(0xFF9A9696)),
                      suffixIcon: Icon(Icons.search),
                      suffixIconColor: Colors.black),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  "Livestock Products",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset("assets/image/meat.png"),
                      )),
                  InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset("assets/image/eggs.png"),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Container(
                        child: Image.asset("assets/image/milk.png"),
                      )),
                  InkWell(
                      onTap: () => Get.to(() => FrozenFoodView()),
                      child: Container(
                        child: Image.asset("assets/image/frozenfood.png"),
                      ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 12),
                child: Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/fiesta.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/indomilk.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/fiesta.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/indomilk.png"),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/fiesta.png"),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Image.asset("assets/image/indomilk.png"),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
