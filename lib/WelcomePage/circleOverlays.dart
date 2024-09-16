import 'package:flutter/material.dart';

class CircleOverlays extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Stack(
        textDirection: TextDirection.ltr,
        children: [
          Positioned(
            child: CircleContainer(
                assetLocation: 'assets/images/PEcircle2.png',
                width: 0.6,
                height: 0.33),
            left: 0,
          ),
          Positioned(
            child: CircleContainer(
                assetLocation: 'assets/images/PEcircle1.png',
                width: 0.6,
                height: 0.216),
            right: 0,
          )
        ],
      ),
    );
  }
}

// this class is use to hold the circles
class CircleContainer extends StatelessWidget {
  final String assetLocation;
  final double width;
  final double height;

  CircleContainer(
      {Key key,
      @required this.assetLocation,
      @required this.width,
      @required this.height});

  @override
  Widget build(BuildContext context) {
    return Image(
      width: MediaQuery.of(context).size.width * width,
      height: MediaQuery.of(context).size.height * height,
      image: AssetImage(assetLocation),
      fit: BoxFit.contain,
    );
  }
}
