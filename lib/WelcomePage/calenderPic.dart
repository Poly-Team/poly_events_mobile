import 'package:flutter/material.dart';

// This class is for the calender picture in the middle of the page
class CalenderPic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/PEwelcomeImage.png'),
      fit: BoxFit.contain,
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.8,
    );
  }
}
