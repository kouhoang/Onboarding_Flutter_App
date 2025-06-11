import 'package:flutter/material.dart';

class BackgroundDecoration2 extends StatelessWidget {
  final Color? overlayColor;
  final double? opacity;
  final bool showTopEllipses;
  final bool showBottomRectangles;

  const BackgroundDecoration2({
    Key? key,
    this.overlayColor,
    this.opacity = 0.29,
    this.showTopEllipses = true,
    this.showBottomRectangles = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          if (showTopEllipses) ...[
            Positioned(
              top: -40,
              right: 20,
              child: Image.asset(
                'assets/images/ellipse_2.png',
                width: 350.0,
                height: 350.0,
                color: Color.fromRGBO(239, 240, 244, 1),
              ),
            ),
            Positioned(
              top: -10,
              right: -10,
              child: Image.asset(
                'assets/images/ellipse_1.png',
                width: 285.0,
                height: 285.0,
                color: Color.fromRGBO(239, 240, 244, 1),
              ),
            ),
          ],

          if (showBottomRectangles) ...[
            Positioned(
              bottom: -90,
              left: -190,
              child: Image.asset(
                'assets/images/rectangle_6.png',
                width: 430.0,
                height: 430.0,
                color: Color.fromRGBO(239, 240, 244, 1),
              ),
            ),
            Positioned(
              bottom: -40,
              left: -150,
              child: Image.asset(
                'assets/images/rectangle_5.png',
                width: 400.0,
                height: 400.0,
                color: Color.fromRGBO(239, 240, 244, 1),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
