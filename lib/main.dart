import 'package:flutter/material.dart';
import 'package:showcase/core/ui/scroll/smooth_scroll_behaviour.dart';
import 'package:showcase/themes/themes.dart';
import 'package:showcase/ui/pages/dashboard/portfolio_web_page_v1.dart';

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
      title: 'Fakhry Mubarak',
      theme: getAppTheme(context, true),
      home: const PortfolioWebPageV1(),
    );
  }
}
