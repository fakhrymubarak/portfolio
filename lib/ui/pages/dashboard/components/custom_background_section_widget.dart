import 'package:flutter/material.dart';
import 'package:portfolio/themes/themes.dart';

class CustomBackgroundSectionWidget extends StatelessWidget {
  final Widget child;

  const CustomBackgroundSectionWidget({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          // Background glow elements
          Align(
            alignment: const Alignment(-1.3, -1.3),
            child: Image.asset(Assets.imgBlurKotlin, width: 600, height: 600),
          ),
          Positioned.fill(
            child: Align(
              alignment: const Alignment(1.3, 2),
              child:
                  Image.asset(Assets.imgBlurFlutter, width: 600, height: 600),
            ),
          ),
          child
        ],
      ),
    );
  }
}
