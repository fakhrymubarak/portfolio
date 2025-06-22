import 'package:flutter/material.dart';
import 'package:portfolio/themes/resources/resource.dart';
import 'package:portfolio/ui/model/footer_section_ui.dart';

class FooterSectionProvider extends ChangeNotifier {
  final FooterSectionUi section = const FooterSectionUi(
    socialMediaList: [
      LabeledCta(label: 'Instagram', cta: 'https://www.instagram.com/fakhrymubarak'),
      LabeledCta(label: 'LinkedIn', cta: 'http://linkedin.com/in/fakhrymubarak'),
      LabeledCta(label: 'Github', cta: 'http://github.com/fakhrymubarak'),
      LabeledCta(label: 'YouTube', cta: 'https://www.youtube.com/@fakhry.mubarakk'),
    ],
    contacts: [
      LabeledCta(label: 'Download Resume', cta: 'https://drive.google.com/file/d/1p6Z4PxUOCo3ijZ9D5ZAsbQWjRqeIt6CX/view?usp=sharing'),
      LabeledCta(label: 'Write Email', cta: 'mailto:fakhrymubarak@gmail.com?subject=Work%20Opportunity&body=Hi%20Fakhry,'),
      LabeledCta(label: 'Contact Me', cta: 'https://api.whatsapp.com/send/?phone=6285155305499&text=Hi%20Fakhry, &type=phone_number&app_absent=0'),
    ],
    imagePath: Assets.imgContactMe,
    signature: '©Crafted with ❤️ in 2025',
  );
}
