import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/ui/text/gradient_text_widget.dart';
import 'package:portfolio/themes/styles/app_themes.dart';
import 'package:portfolio/themes/values/app_size.dart';
import 'package:portfolio/ui/pages/dashboard/components/custom_background_section_widget.dart';
import 'package:portfolio/ui/pages/dashboard/sections/intro/intro_section_provider.dart';
import 'package:portfolio/utils/ui_utils.dart';
import 'package:provider/provider.dart';

class IntroSectionWidget extends StatelessWidget {
  const IntroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final section = context.watch<IntroSectionProvider>().section;
    final textTheme = Theme.of(context).textTheme;
    final isMobile = getIsMobile(context);
    final screenHeight = MediaQuery.of(context).size.height;

    return CustomBackgroundSectionWidget(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: AppSize.maxWidthHome, minHeight: screenHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
