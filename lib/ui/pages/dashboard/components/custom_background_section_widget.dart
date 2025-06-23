import 'package:flutter/material.dart';
import 'package:showcase/themes/themes.dart';

class CustomBackgroundSectionWidget extends StatelessWidget {
  const CustomBackgroundSectionWidget({required this.child, super.key});

  final Widget child;

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
            child: Image.asset(Assets.imgBlurFlutter, width: 600, height: 600),
          ),
          Positioned.fill(
            child: Align(
              alignment: const Alignment(1.3, 1.3),
              child:
                  Image.asset(Assets.imgBlurKotlin, width: 600, height: 600),
            ),
          ),
          child
        ],
      ),
    );
  }
}
