import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/pages/portfolio_viewmodel.dart';
import 'package:portfolio/utils/ui_utils.dart';
import 'package:provider/provider.dart';

class PortfolioWebPageV1 extends StatefulWidget {
  const PortfolioWebPageV1({super.key});

  @override
  PortfolioWebPageV1State createState() => PortfolioWebPageV1State();
}

class PortfolioWebPageV1State extends State<PortfolioWebPageV1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PortfolioViewModel>(context);

    return Scaffold(
      body: Column(
        children: [
          SectionIntroWidget(section: viewModel.homeSection),
        ],
      ),
    );
  }
}

class SectionIntroWidget extends StatelessWidget {
  final HomeSectionUi section;

  const SectionIntroWidget({required this.section, super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight,
      child: Stack(
        children: [
          // Background glow elements
          Align(
            alignment: Alignment(-1.3, -1.3),
            child: Image.asset(Assets.imgBlurKotlin, width: 600, height: 600),
          ),
          Align(
            alignment: Alignment(1.3, 1.3),
            child: Image.asset(Assets.imgBlurFlutter, width: 600, height: 600),
          ),
          // Content
          HomeSectionWidgetV3(section),
        ],
      ),
    );
  }
}

class HomeSectionWidgetV3 extends StatelessWidget {
  final HomeSectionUi section;

  const HomeSectionWidgetV3(this.section, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final isMobile = getIsMobile(context);
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 810),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Dynamic image from HomeSectionUi
            CircleAvatar(
              radius: isMobile ? 50 : 100,
              backgroundImage: AssetImage(section.imagePath),
            ),
            const SizedBox(height: 24),

            // Title
            Wrap(
              alignment: WrapAlignment.center,
              children: [
                Text('Hi, I am ', style: textTheme.headlineLarge),
                GradientText(
                  text: "Fakhry ",
                  style: textTheme.headlineLarge,
                  colors: AppColors.kotlinGradient,
                ),
                Text('Mubarak', style: textTheme.headlineLarge),
              ],
            ),

            // Subtitle
            const SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(section.description, textAlign: TextAlign.center),
            ),
            const SizedBox(height: 50),

            // Experience With
            Text(section.techStackSection.title,
                style: textTheme.headlineMedium),
            const SizedBox(height: 16),

            // Tools Row
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 24,
              runSpacing: 16,
              children: section.techStackSection.highlightStacks
                  .map(
                    (stack) => ToolsWidget(
                      title: stack.name,
                      imagePath: stack.iconPath,
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ToolsWidget extends StatelessWidget {
  final String title;
  final String imagePath;

  const ToolsWidget({
    super.key,
    required this.title,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final imageSize = getIsMobile(context) ? 28.0 : 54.0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(imagePath, width: imageSize, height: imageSize),
        const SizedBox(height: 8),
        Text(title, style: textTheme.bodySmall),
      ],
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText({
    super.key,
    required this.text,
    this.style,
    required this.colors,
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
