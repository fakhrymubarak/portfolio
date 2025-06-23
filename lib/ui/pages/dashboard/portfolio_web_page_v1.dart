import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:showcase/core/ui/scroll/no_glow_scroll_behaviour.dart';
import 'package:showcase/themes/resources/resource.dart';
import 'package:showcase/ui/pages/dashboard/sections/experience/experience_section_provider.dart';
import 'package:showcase/ui/pages/dashboard/sections/experience/experience_section_widget.dart';
import 'package:showcase/ui/pages/dashboard/sections/footer/footer_section_provider.dart';
import 'package:showcase/ui/pages/dashboard/sections/footer/footer_section_widget.dart';
import 'package:showcase/ui/pages/dashboard/sections/intro/intro_section_provider.dart';
import 'package:showcase/ui/pages/dashboard/sections/intro/intro_section_widget.dart';
import 'package:showcase/ui/pages/dashboard/sections/projects/project_section_provider.dart';
import 'package:showcase/ui/pages/dashboard/sections/projects/project_section_widget.dart';

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
          ScrollConfiguration(
            behavior: NoGlowScrollBehavior(),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: sections.length,
              itemBuilder: (context, index) => sections[index],
            ),
          ),
        ],
      ),
    );
  }
}
