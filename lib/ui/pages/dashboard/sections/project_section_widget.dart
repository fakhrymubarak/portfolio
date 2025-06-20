import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/utils/constant.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectSectionWidget extends StatelessWidget {
  final ProjectSectionUi section;
  final double height;
  final double paddingHorizontal;

  const ProjectSectionWidget({
    required this.section,
    required this.height,
    required this.paddingHorizontal,
    super.key,
  });

  Future<void> _launchUrl(Uri url, BuildContext context) async {
    if (!await launchUrl(url)) {
      SnackBar snackBar = SnackBar(
        content: Text('Could not launch $url'),
      );
      if (context.mounted) ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: 16, horizontal: paddingHorizontal),
      constraints: BoxConstraints(minHeight: height, maxWidth: Const.maxWidthSection),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            section.title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: section.projects
                .map(
                  (project) => InkWell(
                    child: _ProjectCardWidget(project),
                    onTap: () => _launchUrl(Uri.parse(project.cta), context),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class _ProjectCardWidget extends StatelessWidget {
  final ProjectItemUi project;

  const _ProjectCardWidget(this.project);

  @override
  Widget build(BuildContext context) {
    return Container(
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
