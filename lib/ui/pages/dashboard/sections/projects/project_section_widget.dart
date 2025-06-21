import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/ui/text/gradient_text_widget.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/themes/values/app_size.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/ui/model/project_section.dart';
import 'package:portfolio/ui/pages/dashboard/sections/projects/project_section_provider.dart';
import 'package:portfolio/utils/ui_utils.dart';
import 'package:provider/provider.dart';

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
            const SizedBox(height: 64),
            GradientText(
              text: section.title,
              style: Theme.of(context).textTheme.headlineMedium,
              colors: AppColors.kotlinGradient,
            ),
            const SizedBox(height: 32),
            ...List.generate(section.projects.length, (index) {
              final project = section.projects[index];
              final isEven = index % 2 == 0;

              return _ProjectRowWidget(project: project, isEven: isEven);
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

class _ProjectRowWidget extends StatelessWidget {
  final ProjectItemUi project;
  final bool isEven;

  const _ProjectRowWidget({
    required this.project,
    required this.isEven,
  });

  static const _cardRatio = 45;
  static const _textRatio = 55;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchWebUrl(Uri.parse(project.cta), context),
      child: Padding(
        padding: const EdgeInsetsDirectional.symmetric(
          horizontal: 16.0,
          vertical: 24.0,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: isEven
              ? [
                  Expanded(
                      flex: _cardRatio, child: _ProjectCardWidget(project)),
                  const SizedBox(width: 32),
                  Expanded(flex: _textRatio, child: Text(project.desc)),
                ]
              : [
                  Expanded(flex: _textRatio, child: Text(project.desc)),
                  const SizedBox(width: 32),
                  Expanded(
                      flex: _cardRatio, child: _ProjectCardWidget(project)),
                ],
        ),
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
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(project.logo),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      project.timeline,
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                    Text(
                      project.title,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
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
        spacing: 12,
        children: stacks
            .map((stack) =>
                SvgPicture.asset(height: 24, width: 24, stack.iconPath))
            .toList(),
      ),
    );
  }
}
