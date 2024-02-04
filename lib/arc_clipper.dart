import 'package:flutter/material.dart';

import 'clipper.dart';

class ClipWidget extends StatelessWidget {
  final Widget child;
  final double space;
  final Widget topChild;
  final double height;
  const ClipWidget(
      {super.key,
      required this.child,
      required this.space,
      required this.height,
      required this.topChild});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Column(
          children: [
             SizedBox(
              height: height,
            ),
            ClipPath(
              clipper: ArcClipper(space),
              child: child,
            ),
          ],
        ),
        Positioned(
          //top: -5,
          child: topChild,
        ),
      ],
    );
  }
}
