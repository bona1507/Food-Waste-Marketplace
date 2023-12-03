import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:troli_gsc/app/routes/app_pages.dart';
import 'package:troli_gsc/onboarding.dart';
import 'app/widgets/loadingpage.dart';

// void main() {
//   runApp(GetMaterialApp(
//     debugShowCheckedModeBanner: false,
//     title: "App",
//     initialRoute: Routes.BUY,
//     getPages: AppPages.routes,
//     theme: ThemeData(fontFamily: 'Nunito'),
//   ));
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 5)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return loadingpage();
        } else {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            title: "Application",
            theme: ThemeData(fontFamily: 'Nunito'),
            home: onboarding(),
          );
        }
      },
    );
  }
}
