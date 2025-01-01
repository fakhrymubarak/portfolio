import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/portfolio_viewmodel.dart';
import 'package:provider/provider.dart';

import 'sections/contact_section_widget.dart';
import 'sections/experience_section_widget.dart';
import 'sections/home_section_widget.dart';
import 'sections/project_section_widget.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PortfolioViewModel(),
      child: const PortfolioView(),
    );
  }
}

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PortfolioViewModel>(context);
    final mediaQuerySize = MediaQuery.of(context).size;
    final isMobile = mediaQuerySize.width < 600;
    final isWideWeb = mediaQuerySize.width < 1000;
    final sectionHeight = mediaQuerySize.height * 0.8;
    final double paddingHorizontal = isMobile
        ? 16
        : isWideWeb
            ? mediaQuerySize.width * 0.15
            : mediaQuerySize.width * 0.1;

    final homeKey = GlobalKey();
    final projectKey = GlobalKey();
    final experienceKey = GlobalKey();
    final contactKey = GlobalKey();

    void scrollToSection(GlobalKey key) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
      );
    }

    return Scaffold(
      appBar: isMobile
          ? AppBar(
              centerTitle: true,
              title: Text(
                "Fakhry",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            )
          : null,
      drawer: isMobile
          ? Drawer(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Text(
                      'Navigation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollToSection(homeKey);
                    },
                  ),
                  ListTile(
                    title: const Text('Projects'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollToSection(projectKey);
                    },
                  ),
                  ListTile(
                    title: const Text('Experience'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollToSection(experienceKey);
                    },
                  ),
                  ListTile(
                    title: const Text('Contact'),
                    onTap: () {
                      Navigator.pop(context);
                      scrollToSection(contactKey);
                    },
                  ),
                ],
              ),
            )
          : null,
      body: Column(
        children: [
          NavHeaderSectionWidget(
            isMobile: isMobile,
            onHomePressed: () => scrollToSection(homeKey),
            onProjectPressed: () => scrollToSection(projectKey),
            onExperiencePressed: () => scrollToSection(experienceKey),
            onContactPressed: () => scrollToSection(contactKey),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeSectionWidget(
                    section: viewModel.homeSection,
                    height: sectionHeight,
                    paddingHorizontal: paddingHorizontal,
                    key: homeKey,
                  ),
                  ProjectSectionWidget(
                    section: viewModel.projectSection,
                    height: sectionHeight,
                    paddingHorizontal: paddingHorizontal,
                    key: projectKey,
                  ),
                  ExperienceSectionWidget(
                    section: viewModel.experienceSection,
                    height: sectionHeight,
                    paddingHorizontal: paddingHorizontal,
                    key: experienceKey,
                  ),
                  ContactSectionWidget(
                    viewModel.contactSection,
                    key: contactKey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavHeaderSectionWidget extends StatelessWidget {
  final bool isMobile;

  final VoidCallback onHomePressed;
  final VoidCallback onProjectPressed;
  final VoidCallback onExperiencePressed;
  final VoidCallback onContactPressed;

  const NavHeaderSectionWidget({
    required this.isMobile,
    required this.onHomePressed,
    required this.onProjectPressed,
    required this.onExperiencePressed,
    required this.onContactPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          isMobile
              ? SizedBox.shrink()
              : Text(
                  'Fakhry',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
          if (!isMobile)
            Row(
              children: [
                _buildNavButton('Home', onHomePressed),
                _buildNavButton('Projects', onProjectPressed),
                _buildNavButton('Experience', onExperiencePressed),
                _buildNavButton('Contact', onContactPressed),
              ],
            ),
        ],
      ),
    );
  }

  Widget _buildNavButton(String title, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
