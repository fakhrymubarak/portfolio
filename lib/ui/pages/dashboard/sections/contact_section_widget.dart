import 'package:flutter/material.dart';
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
            style: const TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            section.email,
            style: const TextStyle(fontSize: 16, color: Colors.white),
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
