// Data Classes
class HomeSectionUi {
  HomeSectionUi({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.btnInteraction1,
    required this.btnInteraction2,
    required this.techStackSection,
    this.subtitle,
  });

  final List<String> title;
  final String? subtitle;
  final String description;
  final String imagePath;
  final String btnInteraction1;
  final String btnInteraction2;
  final TechStackSectionUi techStackSection;
}

class TechStackSectionUi {
  TechStackSectionUi({
    required this.title,
    required this.highlightStacks,
    required this.stacks,
  });

  final String title;
  final List<TechStack> stacks;
  final List<TechStack> highlightStacks;
}

class TechStack {
  TechStack({required this.name, required this.iconPath});

  final String iconPath;
  final String name;
}
