// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/home/views/home_view.dart';
import 'package:troli_gsc/app/modules/ob2/views/ob2_view.dart';
import 'package:troli_gsc/app/modules/sign-up/views/sign_up_view.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginView extends StatefulWidget {
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isObscure = true;
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3DD),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: 20),
            Container(
              alignment: Alignment.center,
              height: 150,
              child: Image.asset(
                "assets/image/signin.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                // suffixIcon: new Icon(Icons.email),
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                    borderSide: BorderSide(color: Colors.white)),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
                obscureText: _isObscure,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Password',
                    suffixIcon: IconButton(
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }))),
            Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  value: isChecked,
                  onChanged: (newBool) {
                    setState(() {
                      isChecked = newBool;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("Remember me"),
                SizedBox(width: 80),
                Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                )
              ],
            ),
            Container(
              width: 336,
              height: 50,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => HomeView()),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontSize: 25),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color(0xFF384E20),
                  // padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 5),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
                Text("Or Continue With", style: TextStyle(fontSize: 15)),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 5),
                    height: 1,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => HomeView()),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset(
                    "assets/logo/facebook.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Continue with Facebook",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => HomeView()),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/logo/google.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Continue with Google",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              height: 60,
              child: ElevatedButton(
                onPressed: () => Get.offAll(() => HomeView()),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Image.asset("assets/logo/apple.png"),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Continue with Apple",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ))
                ]),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(4)),
                  primary: Color.fromARGB(255, 255, 255, 255),
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, color: Color(0xFFD2D2D2)),
                ),
                TextButton(
                  onPressed: () => Get.offAll(() => SignUpView()),
                  child: Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Color(0x805B5656)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
                onTap: () => Get.offAll(() => Ob2View()),
                child:
                    Text("<< Back", style: TextStyle(color: Color(0xFF384E20))))
          ],
        ),
      ),
    );
  }
}
