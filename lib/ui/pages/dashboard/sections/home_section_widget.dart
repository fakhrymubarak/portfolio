import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/ui/model/home_section.dart';

class HomeSectionWidget extends StatelessWidget {
  final HomeSection section;
  final double height;

  const HomeSectionWidget(
      {required this.section, required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 80,
            backgroundImage: Image.network(section.image).image,
          ),
          const SizedBox(height: 20),
          Text(
            section.title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          Text(
            section.description,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
          ExperienceIconSectionWidget(),
        ],
      ),
    );
  }
}

class ExperienceIconSectionWidget extends StatelessWidget {
  const ExperienceIconSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Column(
        children: [
          const Text(
            'EXPERIENCE WITH',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Wrap(
            spacing: 20,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
              SvgPicture.asset(
                'assets/icons/ic_kotlin.svg',
                width: 50,
                height: 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
