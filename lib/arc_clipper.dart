import 'package:flutter/material.dart';

import 'clipper.dart';

class ClipWidget extends StatelessWidget {
  /// the widget that will be clipped EX:Container
  final Widget child;
  /// The space of the clip
  final double space;
  /// The top Widget that will be inside the clip EX: CircleAvatar
  final Widget topChild;
  ///height is use to set the top widget and the required position
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
