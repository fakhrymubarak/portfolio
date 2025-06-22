class FooterSectionUi {
  const FooterSectionUi({
    required this.socialMediaList,
    required this.contacts,
    required this.imagePath,
    required this.signature,
  });

  final List<LabeledCta> socialMediaList;
  final List<LabeledCta> contacts;
  final String imagePath;
  final String signature;
}

class LabeledCta {
  const LabeledCta({
    required this.label,
    required this.cta,
  });

  final String label;
  final String cta;
}
