import 'package:flutter/material.dart';

/// Remove overscroll on from scrollable widget
class NoGlowScrollBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child; // No glow effect
  }

  // For newer Flutter versions (Flutter 3.7+)
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return const ClampingScrollPhysics(); // iOS-like
  }
}
