import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_provider.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_widget.dart';
import 'package:provider/provider.dart';

class PortfolioWebPageV1 extends StatelessWidget {
  const PortfolioWebPageV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ChangeNotifierProvider(
            //   create: (_) => IntroSectionProvider(),
            //   child: IntroSectionWidget(),
            // ),
            ChangeNotifierProvider(
              create: (_) => ProjectSectionProvider(),
              child: ProjectSectionWidgetV2(),
            ),
          ],
        ),
      ),
    );
  }
}
