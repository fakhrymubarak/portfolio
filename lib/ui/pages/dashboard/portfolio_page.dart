import 'package:flutter/material.dart';
import 'package:portfolio/ui/pages/dashboard/portfolio_web_page_v1.dart';
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
    return PortfolioWebPageV1();
  }
}