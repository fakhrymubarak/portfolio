import 'package:flutter/material.dart';
import 'package:portfolio/themes/themes.dart';
import 'package:portfolio/ui/pages/dashboard/portfolio_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fakhry Mubarak",
      theme: getAppTheme(context),
      home: const PortfolioPage(),
    );
  }
}
