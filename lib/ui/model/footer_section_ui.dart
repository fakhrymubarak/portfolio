class FooterSectionUi {
  final List<LabeledCta> socialMediaList;
  final List<LabeledCta> contacts;
  final String imagePath;
  final String signature;

  const FooterSectionUi({
    required this.socialMediaList,
    required this.contacts,
    required this.imagePath,
    required this.signature,
  });
}

class LabeledCta {
  final String label;
  final String cta;

  const LabeledCta({
    required this.label,
    required this.cta,
  });
}
