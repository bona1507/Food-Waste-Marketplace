import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/about/views/about_view.dart';
import 'package:troli_gsc/app/modules/buy/bindings/buy_binding.dart';
import 'package:troli_gsc/app/modules/buy/views/buy_view.dart';
import 'package:troli_gsc/app/modules/history_sell/views/history_sell_view.dart';
import 'package:troli_gsc/app/modules/notification/views/notification_view.dart';
import 'package:troli_gsc/app/modules/profile/views/profile_view.dart';
import 'package:troli_gsc/app/modules/reward/views/reward_view.dart';
import 'package:troli_gsc/app/modules/sell1/views/sell1_view.dart';
import 'package:troli_gsc/app/modules/sell2/views/sell2_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      Stack(children: [
        Container(
          width: Get.width,
          child: Image.asset(
            "assets/image/Ellipse 8.png",
            fit: BoxFit.cover,
          ),
        ),
        Container(
            width: 200,
            height: 100,
            // color: Colors.amber,
            margin: EdgeInsets.only(left: 30, top: 60),
            child: Row(
              children: [
                Container(
                  child: Image.asset(
                    "assets/logo/girl.png",
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
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    Text(
                      "Nanda!",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                )
              ],
            )),
        Stack(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 150),
              width: 389,
              height: 156,
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
                        //blurStyle: BlurStyle.outer,
                        offset: Offset(0, 2))
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      "assets/logo/poin.png",
                    ),
                    margin: EdgeInsets.only(bottom: 60, right: 10),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 60, right: 4),
                    child: Text(
                      "1000",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 60,
                    ),
                    child: Text(
                      "points",
                      style: TextStyle(fontSize: 12),
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsetsDirectional.only(top: 240),
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => HistorySellView()),
                    child: Container(
                      child: Image.asset("assets/image/Primary.png"),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                ),
                Container(
                  margin: EdgeInsetsDirectional.only(top: 240),
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => RewardView()),
                    child: Container(
                      child: Image.asset("assets/image/Secondary.png"),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                )
              ],
            )
          ],
        ),
        Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(top: 310, left: 10, right: 10),
              width: 389,
              height: 100,
              //color: Colors.amber,
              //margin: EdgeInsetsDirectional.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () => Get.to(() => Sell1View()),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Sell Product",
                          style:
                              TextStyle(color: Color(0xFF384E20), fontSize: 23),
                        ),
                      ),
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(color: Color(0xFF384E20), width: 1.5)),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                  ElevatedButton(
                    onPressed: () => Get.to(() => BuyView()),
                    child: Container(
                      child: Center(
                        child: Text(
                          "Buy Product",
                          style: TextStyle(
                            color: Color(0xFF384E20),
                            fontSize: 23,
                          ),
                        ),
                      ),
                      width: 170,
                      height: 41,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border:
                              Border.all(color: Color(0xFF384E20), width: 1.5)),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 0)),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(children: [
                Container(
                  margin: EdgeInsets.only(right: 300),
                  child: Text(
                    "Article",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => InkWell(
                        onTap: () => Get.to(() => AboutView()),
                        child: Stack(children: [
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Image.asset(
                              "assets/image/about.png",
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 90, top: 100),
                            child: Text(
                              "About Troli",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ]),
                      ),
                    )),
                Container(
                  margin: EdgeInsets.only(right: 300, top: 20),
                  child: Text(
                    "Video",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                    height: 130,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Image.asset("assets/image/video.png"),
                      ),
                    )),
              ]),
              width: 785,
              //height: 160,
              //color: Colors.amber,
            )
          ],
        )
      ]),
      BuyView(),
      NotificationView(),
      ProfileView(),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: const Text('HomeView'),
      //   centerTitle: true,
      // ),
      body: widgets[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Color(0xFF384E20),
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.shopping_cart, title: 'Shop'),
          TabItem(icon: Icons.notification_add, title: 'Notification'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        initialActiveIndex: 0,
        onTap: (int i) {
          setState(() {
            currentIndex = i;
          });
        },
      ),
    );
  }
}
