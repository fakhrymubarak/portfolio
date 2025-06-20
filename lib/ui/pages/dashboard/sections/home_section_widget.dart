import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/ui/model/home_section_ui.dart';
import 'package:portfolio/utils/constant.dart';

class HomeSectionWidget extends StatelessWidget {
  final HomeSectionUi section;
  final double height;
  final double paddingHorizontal;

  const HomeSectionWidget({
    required this.section,
    required this.height,
    required this.paddingHorizontal,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 130),
      padding:
          EdgeInsets.symmetric(vertical: 16, horizontal: paddingHorizontal),
      constraints:
          BoxConstraints(minHeight: height, maxWidth: Const.maxWidthSection),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: Image.network(section.imagePath).image,
          ),
          const SizedBox(height: 16),
          Text(
            section.title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          section.subtitle != null
              ? Text(
                  section.subtitle!,
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                )
              : SizedBox.shrink(),
          const SizedBox(height: 16),
          Text(
            section.description,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 16,
            runSpacing: 8,
            children: [
              ElevatedButton(
                  onPressed: () => {}, child: Text(section.btnInteraction1)),
              ElevatedButton(
                  onPressed: () => {}, child: Text(section.btnInteraction2)),
            ],
          ),
          const SizedBox(height: 32),
          ExperienceIconSectionWidget(
              section.techStackSection, paddingHorizontal),
        ],
      ),
    );
  }
}

class ExperienceIconSectionWidget extends StatelessWidget {
  final TechStackSectionUi techStackSection;
  final double parentPadding;

  const ExperienceIconSectionWidget(this.techStackSection, this.parentPadding,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuerySize = MediaQuery.of(context).size;
    final parentWidth = mediaQuerySize.width - (parentPadding * 3);

    final double iconSize = (parentWidth / 4) - (8 * 4);

    return Column(
      children: [
        Text(
          techStackSection.title,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: 16),
        Column(
          children: [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              alignment: WrapAlignment.center,
              children: techStackSection.highlightStacks
                  .map(
                    (stack) => SizedBox(
                      width: iconSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            stack.iconPath,
                            width: iconSize,
                            height: iconSize,
                          ),
                          SizedBox(height: 8),
                          Text(
                            stack.name,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 16),
            TechStacksDraggableWidget(techStackSection.stacks, iconSize / 2)
          ],
        ),
      ],
    );
  }
}

class TechStacksDraggableWidget extends StatefulWidget {
  final List<TechStack> stacks;
  final double iconSize;

  const TechStacksDraggableWidget(this.stacks, this.iconSize, {super.key});

  @override
  State<TechStacksDraggableWidget> createState() =>
      _TechStacksDraggableWidgetState();
}

class _TechStacksDraggableWidgetState extends State<TechStacksDraggableWidget> {
  @override
  Widget build(BuildContext context) {
    final ScrollController scrollController = ScrollController();

    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // Scroll horizontally based on the drag movement
        scrollController.jumpTo(
          scrollController.position.pixels - details.delta.dx,
        );
      },
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        controller: scrollController,
        child: Wrap(
          spacing: 16,
          children: widget.stacks
              .map(
                (stack) => SizedBox(
                  width: widget.iconSize,
                  child: Column(
                    children: [
                      SvgPicture.asset(
                        stack.iconPath,
                        width: widget.iconSize,
                        height: widget.iconSize,
                      ),
                      SizedBox(height: 8),
                      Text(
                        stack.name,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

// Experimental infinite scroll
class TechStacksAutoscrollWidget extends StatefulWidget {
  final List<TechStack> stacks;

  const TechStacksAutoscrollWidget(this.stacks, {super.key});

  @override
  State<TechStacksAutoscrollWidget> createState() =>
      _TechStacksAutoscrollWidgetState();
}

class _TechStacksAutoscrollWidgetState
    extends State<TechStacksAutoscrollWidget> {
  _TechStacksAutoscrollWidgetState();

  final ScrollController _scrollController = ScrollController();
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (_scrollController.hasClients) {
        final maxScroll = _scrollController.position.maxScrollExtent;
        final currentScroll = _scrollController.position.pixels;

        if (currentScroll >= maxScroll) {
          _scrollController.jumpTo(0); // Restart scrolling from the beginning
        } else {
          _scrollController.animateTo(
            currentScroll + 5.0, // Scroll by 5 pixels at a time
            duration: const Duration(milliseconds: 100),
            curve: Curves.linear,
          );
        }
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      controller: _scrollController,
      child: Row(
        spacing: 16,
        children: widget.stacks
            .map(
              (stack) => SizedBox(
                width: 75,
                child: Column(
                  children: [
                    SvgPicture.asset(
                      stack.iconPath,
                      width: 75,
                      height: 75,
                    ),
                    SizedBox(height: 8),
                    Text(
                      stack.name,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
