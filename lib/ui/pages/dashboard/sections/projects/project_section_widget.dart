import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/ui/text/gradient_text_widget.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/themes/values/app_size.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_provider.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSectionWidgetV2 extends StatelessWidget {
  const ProjectSectionWidgetV2({super.key});

  @override
  Widget build(BuildContext context) {
    final section = context.watch<ProjectSectionProvider>().section;

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: AppSize.maxWidthHome),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GradientText(
              text: section.title,
              style: Theme.of(context).textTheme.headlineMedium,
              colors: AppColors.kotlinGradient,
            ),
            const SizedBox(height: 100),
            ...List.generate(section.projects.length, (index) {
              final project = section.projects[index];
              final isEven = index % 2 == 0;

              return Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (isEven) ...[
                      _ProjectCardWidget(project),
                      const SizedBox(width: 32),
                      Expanded(child: _ProjectDescriptionWidget(project)),
                    ] else ...[
                      Expanded(child: _ProjectDescriptionWidget(project)),
                      const SizedBox(width: 32),
                      _ProjectCardWidget(project),
                    ]
                  ],
                ),
              );
            }),
            Center(
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.white),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Load more',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProjectDescriptionWidget extends StatelessWidget {
  final ProjectItemUi project;

  const _ProjectDescriptionWidget(this.project);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Lorem ipsum dolor sit amet consectetur. Duis malesuada neque morbi et aliquet eu. Egestas aliquet auctor morbi ut porttitor consequat. Fringilla dignissim nisi elit urna quisque. Volutpat tortor lorem vestibulum nisi mauris vestibulum integer mattis morbi. Duis malesuada neque morbi et aliquet eu. Egestas aliquet auctor morbi ut porttitor consequat.',
    );
  }
}

class _ProjectCardWidget extends StatelessWidget {
  final ProjectItemUi project;

  const _ProjectCardWidget(this.project);

  @override
  Widget build(BuildContext context) {

    Future<void> launchWebUrl(Uri url, BuildContext context) async {
      if (!await launchUrl(url)) {
        SnackBar snackBar = SnackBar(
          content: Text('Could not launch $url'),
        );
        if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return InkWell(
      onTap: () => launchWebUrl(Uri.parse(project.cta), context),
      child: Container(
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(project.image),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 16,
              right: 0,
              child: _PlatformStackWidget(project.stacks),
            ),
            _ProjectInfoCardWidget(project)
          ],
        ),
      ),
    );
  }
}

class _ProjectInfoCardWidget extends StatelessWidget {
  final ProjectItemUi project;

  const _ProjectInfoCardWidget(this.project);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: SizedBox.shrink()),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            color: AppColors.black70,
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(project.logo),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    project.timeline,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: AppColors.surface),
                  ),
                  Text(
                    project.title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: AppColors.surface),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlatformStackWidget extends StatelessWidget {
  final List<TechStack> stacks;

  const _PlatformStackWidget(this.stacks);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          bottomLeft: Radius.circular(32),
        ),
        color: AppColors.black70,
      ),
      padding: EdgeInsets.only(left: 24, right: 16, top: 8, bottom: 8),
      child: Row(
        spacing: 8,
        children: stacks
            .map((stack) =>
                SvgPicture.asset(height: 36, width: 36, stack.iconPath))
            .toList(),
      ),
    );
  }
}
