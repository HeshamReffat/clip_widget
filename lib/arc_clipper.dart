import 'package:flutter/material.dart';

import 'clipper.dart';

class ClipWidget extends StatelessWidget {
  final Widget child;
  final double space;
  final Widget topChild;
  const ClipWidget({super.key,required this.child,required this.space,required this.topChild});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 30.0,
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
