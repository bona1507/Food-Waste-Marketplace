import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/ob2/views/ob2_view.dart';

import '../controllers/profile_c_controller.dart';

class ProfileCView extends GetView<ProfileCController> {
  const ProfileCView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile'),
          centerTitle: true,
          backgroundColor: Color(0xFF362706),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 40, bottom: 20),
              child: Row(
                children: [
                  Container(
                    width: 119,
                    height: 119,
                    child: Image.asset("assets/logo/profileav.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Putra"),
                      Text(
                        "Malang, East Java",
                        style: TextStyle(color: Color(0xFF9A9696)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 120,
              width: 390,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 0.1,
                        blurRadius: 8,
                        blurStyle: BlurStyle.inner,
                        offset: Offset(0, 2))
                  ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "23",
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          "Completed",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF9A9696)),
                        )
                      ],
                    ),
                    Container(
                      height: 90,
                      width: 1,
                      color: Color(0xFF9A9696),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "5",
                          style: TextStyle(fontSize: 24),
                        ),
                        Text(
                          "Average/day",
                          style:
                              TextStyle(fontSize: 15, color: Color(0xFF9A9696)),
                        )
                      ],
                    )
                  ]),
            ),
            SizedBox(
              height: 20,
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
                        child: Image.asset("assets/logo/myprofile.png"),
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
                  onTap: () {},
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 25, right: 25),
                        child: Image.asset("assets/logo/languages.png"),
                      ),
                      Container(
                        child: Text(
                          "Languages",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 203),
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
                        child: Image.asset("assets/logo/terms.png"),
                      ),
                      Container(
                        child: Text(
                          "Terms of Use",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 184),
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
                        child: Image.asset("assets/logo/privacy.png"),
                      ),
                      Container(
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 179),
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
                        child: Image.asset("assets/logo/help.png"),
                      ),
                      Container(
                        child: Text(
                          "Help Center",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 192),
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
                        backgroundColor: Color(0xFF362706)),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
