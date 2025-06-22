import 'package:flutter/widgets.dart';

class GradientText extends StatelessWidget {
  const GradientText({
    required this.text, required this.colors, super.key,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: colors)
          .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
