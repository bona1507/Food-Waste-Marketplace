import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:troli_gsc/app/modules/ob1/views/ob1_view.dart';
import 'package:troli_gsc/app/modules/ob2/views/ob2_view.dart';
import 'package:troli_gsc/app/widgets/onboard1.dart';
import 'package:troli_gsc/app/widgets/onboard2.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(controller: _controller, children: [Ob1View(), Ob2View()]),
          Container(
              alignment: Alignment(0, -0.75),
              child: SmoothPageIndicator(controller: _controller, count: 2))
        ],
      ),
    );
  }
}
