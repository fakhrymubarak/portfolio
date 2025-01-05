import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/pages/dashboard/sections/nav_bar_section_widget.dart';
import 'package:portfolio/ui/pages/portfolio_viewmodel.dart';
import 'package:portfolio/utils/constant.dart';
import 'package:provider/provider.dart';

import 'sections/contact_section_widget.dart';
import 'sections/experience_section_widget.dart';
import 'sections/home_section_widget_v2.dart';
import 'sections/project_section_widget.dart';

class PortfolioWebPage extends StatefulWidget {
  const PortfolioWebPage({super.key});

  @override
  PortfolioWebPageState createState() => PortfolioWebPageState();
}

class PortfolioWebPageState extends State<PortfolioWebPage> {
  final ScrollController _scrollController = ScrollController();

  final homeKey = GlobalKey();
  final projectKey = GlobalKey();
  final experienceKey = GlobalKey();
  final contactKey = GlobalKey();

  final homeNavKey = GlobalKey();
  final projectNavKey = GlobalKey();
  final experienceNavKey = GlobalKey();
  final contactNavKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final viewModel = Provider.of<PortfolioViewModel>(context, listen: false);

    if (_isSectionVisible(homeKey)) {
      final widgetPos = _getWidgetPosition(homeNavKey);
      viewModel.selectSection(Const.homeId, widgetPos);
    } else if (_isSectionVisible(projectKey)) {
      final widgetPos = _getWidgetPosition(projectNavKey);
      viewModel.selectSection(Const.projectId, widgetPos);
    } else if (_isSectionVisible(experienceKey)) {
      final widgetPos = _getWidgetPosition(experienceNavKey);
      viewModel.selectSection(Const.experienceId, widgetPos);
    } else if (_isSectionVisible(contactKey)) {
      final widgetPos = _getWidgetPosition(contactNavKey);
      viewModel.selectSection(Const.contactId, widgetPos);
    }
  }

  bool _isSectionVisible(GlobalKey key) {
    final RenderObject? renderObject = key.currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      final position = renderObject.localToGlobal(Offset.zero);
      final size = renderObject.size;

      return position.dy >= 0 &&
          position.dy < MediaQuery.of(context).size.height - size.height / 2;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<PortfolioViewModel>(context);

    final mediaQuerySize = MediaQuery.of(context).size;
    final sectionHeight = mediaQuerySize.height;
    final sectionWidth = mediaQuerySize.width;

    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            Assets.imgBgWebsite,
            width: sectionWidth,
            fit: BoxFit.fitWidth,
          ),
          SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomeSectionWidgetV2(
                  section: viewModel.homeSection,
                  height: sectionHeight,
                  paddingHorizontal: 100,
                  key: homeKey,
                ),
                ProjectSectionWidget(
                  section: viewModel.projectSection,
                  height: sectionHeight,
                  paddingHorizontal: 100,
                  key: projectKey,
                ),
                ExperienceSectionWidget(
                  section: viewModel.experienceSection,
                  height: sectionHeight,
                  paddingHorizontal: 100,
                  key: experienceKey,
                ),
                ContactSectionWidget(
                  viewModel.contactSection,
                  key: contactKey,
                ),
              ],
            ),
          ),
          NavHeaderSectionWidget(
            homeKey: homeKey,
            projectKey: projectKey,
            experienceKey: experienceKey,
            contactKey: contactKey,
            homeNavKey: homeNavKey,
            projectNavKey: projectNavKey,
            experienceNavKey: experienceNavKey,
            contactNavKey: contactNavKey,
          ),
        ],
      ),
    );
  }

  Offset? _getWidgetPosition(GlobalKey key) {
    final RenderBox? renderBox =
        key.currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.localToGlobal(Offset.zero);
  }
}
