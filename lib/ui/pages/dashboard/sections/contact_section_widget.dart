import 'package:flutter/material.dart';
import 'package:portfolio/themes/styles/app_themes.dart';
import 'package:portfolio/ui/model/contact_section.dart';

class ContactSectionWidget extends StatelessWidget {
  final ContactSection section;

  const ContactSectionWidget(this.section, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            section.title,
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: AppColors.white),
          ),
          const SizedBox(height: 10),
          SelectableText(
            section.email,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: AppColors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.link),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.code),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
