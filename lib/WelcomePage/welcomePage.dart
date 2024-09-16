import 'package:flutter/material.dart';
import 'circleOverlays.dart';
import 'calenderPic.dart';
import 'signInButtons.dart';
import 'pageTitle.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        textDirection: TextDirection.ltr,
        children: [
          Positioned(
            child: CircleOverlays(),
          ),
          Positioned(
            child: BottomSquareWithButton(),
            bottom: 0,
          ),
          Positioned(
            child: CalenderPic(),
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: MediaQuery.of(context).size.width * 0.1,
          ),
          Positioned(
            child: PageTitle(),
            left: MediaQuery.of(context).size.width * 0.07,
            top: MediaQuery.of(context).size.height * 0.07,
          ),
        ],
      ),
    );
  }
}
