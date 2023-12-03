import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:troli_gsc/app/modules/home/views/home_view.dart';
import 'package:troli_gsc/app/modules/login/views/login_view.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFF9F3DD),
      body: SingleChildScrollView(
        // scrollDirection: Axis.vertical,
        reverse: true,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 60, bottom: 20),
                  width: 235,
                  height: 60,
                  //color: Colors.amber,
                  child: Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 42),
                  ),
                ),
                Container(
                  width: 330,
                  height: 60,
                  //color: Colors.green,
                  child: Text(
                    "Enter your email and password Start Creating!",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 20),
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
                SizedBox(height: 20),
                TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                      // suffixIcon: new Icon(Icons.email),
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
                          })),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    // suffixIcon: new Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    // suffixIcon: new Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Phone Number',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    // suffixIcon: new Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.white)),
                    labelText: 'Address',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  width: 370,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Get.offAll(() => HomeView()),
                    child: Text(
                      "Sign Up",
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
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, color: Color(0xFFD2D2D2)),
                    ),
                    TextButton(
                      onPressed: () => Get.offAll(() => LoginView()),
                      child: Text(
                        "Sign in",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 18, color: Color(0x805B5656)),
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
