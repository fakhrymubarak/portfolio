import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/ui/text/gradient_text_widget.dart';
import 'package:portfolio/themes/styles/app_themes.dart';
import 'package:portfolio/themes/values/app_size.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/pages/dashboard/sections/intro/intro_section_provider.dart';
import 'package:portfolio/utils/ui_utils.dart';
import 'package:provider/provider.dart';

import '../../../../../themes/resources/resource.dart' show Assets;

class IntroSectionWidget extends StatelessWidget {
  const IntroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final section = context.watch<IntroSectionProvider>().section;
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
        constraints: const BoxConstraints(maxWidth: AppSize.maxWidthHome),
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
                Text(section.title[0], style: textTheme.headlineLarge),
                GradientText(
                  text: section.title[1],
                  style: textTheme.headlineLarge,
                  colors: AppColors.kotlinGradient,
                ),
                Text(section.title[2], style: textTheme.headlineLarge),
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
                style: textTheme.headlineSmall),
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
