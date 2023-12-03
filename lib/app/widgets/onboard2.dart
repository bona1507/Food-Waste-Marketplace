import 'package:flutter/material.dart';
import 'package:troli_gsc/app/modules/login/views/login_view.dart';

class onboard2 extends StatefulWidget {
  const onboard2({super.key});

  @override
  State<onboard2> createState() => _onboard2State();
}

class _onboard2State extends State<onboard2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F3DD),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Image.asset("assets/logo/onboard2.png"),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginView(),
                    )),
                child: Text(
                  "User",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(15.0)),
                  primary: Color(0xFF384E20),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Courier",
                style: TextStyle(fontSize: 25),
              )
            ],
          ),
        ),
      ),
    );
  }
}
