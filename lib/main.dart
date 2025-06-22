import 'package:flutter/material.dart';
import 'package:portfolio/core/ui/scroll/smooth_scroll_behaviour.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/pages/dashboard/portfolio_web_page_v1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: SmoothScrollBehavior(),
      title: "Fakhry Mubarak",
      theme: getAppTheme(context, true),
      home: const PortfolioWebPageV1(),
    );
  }
}
