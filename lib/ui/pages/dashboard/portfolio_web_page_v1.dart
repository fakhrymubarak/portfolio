import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/pages/dashboard/sections/experience/experience_section_provider.dart';
import 'package:portfolio/ui/pages/dashboard/sections/experience/experience_section_widget.dart';
import 'package:portfolio/ui/pages/dashboard/sections/footer/footer_section_provider.dart';
import 'package:portfolio/ui/pages/dashboard/sections/footer/footer_section_widget.dart';
import 'package:portfolio/ui/pages/dashboard/sections/intro/intro_section_provider.dart';
import 'package:portfolio/ui/pages/dashboard/sections/intro/intro_section_widget.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_provider.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_widget.dart';
import 'package:provider/provider.dart';

class PortfolioWebPageV1 extends StatelessWidget {
  const PortfolioWebPageV1({super.key});

  @override
  Widget build(BuildContext context) {
    final sections = [
      ChangeNotifierProvider(
        create: (_) => IntroSectionProvider(),
        child: const IntroSectionWidget(),
      ),
      ChangeNotifierProvider(
        create: (_) => ProjectSectionProvider(),
        child: const ProjectSectionWidgetV2(),
      ),
      ChangeNotifierProvider(
        create: (_) => ExperienceSectionProvider(),
        child: const ExperienceSectionWidget(),
      ),
      ChangeNotifierProvider(
        create: (_) => FooterSectionProvider(),
        child: const FooterSectionWidget(),
      ),
    ];

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imgStaticBackground,
              fit: BoxFit.cover,
            ),
          ),
          ListView.builder(
            itemCount: sections.length,
            itemBuilder: (context, index) => sections[index],
          ),
        ],
      ),
    );
  }
}
