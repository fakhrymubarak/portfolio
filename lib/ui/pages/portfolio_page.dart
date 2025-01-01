import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/ui/model/contact_section.dart';
import 'package:portfolio/ui/model/experience_section.dart';
import 'package:portfolio/ui/model/home_section.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/ui/pages/portfolio_viewmodel.dart';
import 'package:provider/provider.dart';

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
    final isMobile = MediaQuery.of(context).size.width < 600;

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
      appBar: isMobile ? AppBar(centerTitle: true, title: Text("Fakhry")) : null,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fakhry',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  if (!isMobile)
                    Row(
                      children: [
                        _buildNavButton('Home', () => scrollToSection(homeKey)),
                        _buildNavButton(
                            'Projects', () => scrollToSection(projectKey)),
                        _buildNavButton(
                            'Experience', () => scrollToSection(experienceKey)),
                        _buildNavButton(
                            'Contact', () => scrollToSection(contactKey)),
                      ],
                    ),
                ],
              ),
            ),

            _buildSectionContainer(
                viewModel.homeSection, homeKey, _buildHomeSection),
            _buildExperienceIconsSection(),
            _buildSectionContainer(
                viewModel.projectSection, projectKey, _buildProjectSection),
            _buildSectionContainer(viewModel.experienceSection, experienceKey,
                _buildExperienceSection),
            _buildSectionContainer(
                viewModel.contactSection, contactKey, _buildContactSection),
          ],
        ),
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

  Widget _buildSectionContainer<T>(
      T section, GlobalKey key, Widget Function(T) builder) {
    return Container(
      key: key,
      child: builder(section),
    );
  }

  Widget _buildHomeSection(HomeSection section) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: Image.network(section.image).image,
          ),
          const SizedBox(height: 20),
          Text(
            section.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            section.description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceIconsSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const Text(
            'EXPERIENCE WITH',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildProjectSection(ProjectSection section) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: section.projects
                .map(
                  (project) => Column(
                    children: [
                      SvgPicture.asset(
                        project.image,
                        width: 200,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        project.title,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildExperienceSection(ExperienceSection section) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...section.experiences.map((experience) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      experience.title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      experience.date,
                      style: const TextStyle(
                          fontSize: 14, fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      experience.description,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildContactSection(ContactSection section) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            section.title,
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            section.email,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
