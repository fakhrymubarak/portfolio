import 'package:flutter/material.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/pages/portfolio_viewmodel.dart';
import 'package:portfolio/utils/constant.dart';
import 'package:provider/provider.dart';

class NavHeaderSectionWidget extends StatelessWidget {
  final GlobalKey homeKey;
  final GlobalKey projectKey;
  final GlobalKey experienceKey;
  final GlobalKey contactKey;

  final GlobalKey homeNavKey;
  final GlobalKey projectNavKey;
  final GlobalKey experienceNavKey;
  final GlobalKey contactNavKey;

  const NavHeaderSectionWidget({
    required this.homeKey,
    required this.projectKey,
    required this.experienceKey,
    required this.contactKey,
    required this.homeNavKey,
    required this.projectNavKey,
    required this.experienceNavKey,
    required this.contactNavKey,
    super.key,
  });

  void scrollToSection(GlobalKey key) {
    final context = key.currentContext;
    if (context == null) return;

    Scrollable.ensureVisible(
      context,
      duration: Const.scrollDurationInMillis,
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: AppColors.black20,
              blurRadius: 5,
              spreadRadius: 2,
              offset: Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        margin: const EdgeInsets.only(top: 16),
        child: Stack(
          children: [
            NavigationBackgroundWidget(),
            Wrap(
              children: [
                NavButtonWidget(
                  Const.homeId,
                  () => scrollToSection(homeKey),
                  key: homeNavKey,
                ),
                NavButtonWidget(
                  Const.projectId,
                  () => scrollToSection(projectKey),
                  key: projectNavKey,
                ),
                NavButtonWidget(
                  Const.experienceId,
                  () => scrollToSection(experienceKey),
                  key: experienceNavKey,
                ),
                NavButtonWidget(
                  Const.contactId,
                  () => scrollToSection(contactKey),
                  key: contactNavKey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NavButtonWidget extends StatelessWidget {
  final int navBarId;
  final VoidCallback onPressed;

  const NavButtonWidget(
    this.navBarId,
    this.onPressed, {
    super.key,
  });

  Offset _getWidgetPosition(GlobalKey key) {
    final renderBox = key.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.localToGlobal(Offset.zero) ?? Offset(0, 0);
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PortfolioViewModel>(context, listen: false);
    final navBar = viewModel.navBarSections[navBarId];
    final widgetKey = key;
    if (navBarId == 0 && widgetKey is GlobalKey) {
      viewModel.setHomeNavOffset(_getWidgetPosition(widgetKey));
    }
    return Container(
      width: 175,
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextButton(
        onPressed: () {
          final widgetKey = key;
          if (widgetKey != null && widgetKey is GlobalKey) {
            final widgetPos = _getWidgetPosition(widgetKey);
            viewModel.selectSection(navBar.id, widgetPos);
            onPressed();
          }
        },
        style: TextButton.styleFrom(
          foregroundColor:
              navBar.isSelected ? AppColors.onPrimary : AppColors.onSurface,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            navBar.title,
          ),
        ),
      ),
    );
  }
}

class NavigationBackgroundWidget extends StatelessWidget {
  const NavigationBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PortfolioViewModel>(context, listen: false);
    return AnimatedPositioned(
      left: viewModel.selectedNavOffset.dx,
      top: viewModel.selectedNavOffset.dy,
      duration: Const.scrollDurationInMillis,
      curve: Curves.easeInOut,
      child: Container(
        height: 35,
        width: 175,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
