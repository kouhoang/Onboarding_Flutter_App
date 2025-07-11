import 'package:flutter/material.dart';

class BackgroundDecoration extends StatelessWidget {
  final Color? overlayColor;
  final double? opacity;
  final bool showTopEllipses;
  final bool showBottomRectangles;

  const BackgroundDecoration({
    super.key,
    this.overlayColor,
    this.opacity = 0.29,
    this.showTopEllipses = true,
    this.showBottomRectangles = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          if (showTopEllipses) ...[
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset(
                'assets/images/ellipse_2.png',
                width: 350.0,
                height: 350.0,
                color: Color.fromRGBO(224, 226, 234, 1),
              ),
            ),
            Positioned(
              top: 0,
              right: -10,
              child: Image.asset(
                'assets/images/ellipse_1.png',
                width: 285.0,
                height: 285.0,
                color: Color.fromRGBO(224, 226, 234, 1),
              ),
            ),
          ],

          if (showBottomRectangles) ...[
            Positioned(
              bottom: 0,
              left: -55,
              child: Image.asset(
                'assets/images/rectangle_4.png',
                width: 230.0,
                height: 250.0,
                color: Color.fromRGBO(224, 226, 234, 1),
              ),
            ),
            Positioned(
              bottom: 0,
              left: -55,
              child: Image.asset(
                'assets/images/rectangle_3.png',
                width: 280.0,
                height: 300.0,
                color: Color.fromRGBO(224, 226, 234, 1),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
