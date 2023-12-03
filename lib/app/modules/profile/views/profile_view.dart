import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/login/views/login_view.dart';
import 'package:troli_gsc/app/modules/my_points2/views/my_points2_view.dart';
import 'package:troli_gsc/app/modules/ob2/views/ob2_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Color(0xFF384E20),
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.only(top: 40, left: 40, bottom: 50),
          child: Row(
            children: [
              Container(
                width: 119,
                height: 119,
                //color: Colors.amber,
                child: Image.asset("assets/logo/girl.png"),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nanda"),
                  Text(
                    "Malang, East Java",
                    style: TextStyle(color: Color(0xFF9A9696)),
                  )
                ],
              )
            ],
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, bottom: 20),
              alignment: Alignment.centerLeft,
              //color: Colors.amber,
              child: Text(
                "About",
                style: TextStyle(fontSize: 20),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/profilesaya.png"),
                  ),
                  Container(
                    child: Text(
                      "My Profile",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 208),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            InkWell(
              onTap: () => Get.to(() => MyPoints2View()),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/mypoints.png"),
                  ),
                  Container(
                    child: Text(
                      "My Points",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 160),
                      child: Text(
                        "History",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xB35B5656)),
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 6),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/panduan.png"),
                  ),
                  Container(
                    child: Text(
                      "Guide",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 245),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/syaratketentuan.png"),
                  ),
                  Container(
                    child: Text(
                      "Terms & Condition",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 140),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/privasi.png"),
                  ),
                  Container(
                    child: Text(
                      "Privacy",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 232),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            InkWell(
              onTap: () {},
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Image.asset("assets/logo/pusatbantuan.png"),
                  ),
                  Container(
                    child: Text(
                      "Help Center",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 193),
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Color(0xFFC2C2C2),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color(0xFF9A9696),
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            ),
            Container(
              width: 336,
              height: 50,
              margin: EdgeInsetsDirectional.only(top: 20),
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => Ob2View()),
                child: Text(
                  "Log Out",
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 0),
                    backgroundColor: Color(0xFF384E20)),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
