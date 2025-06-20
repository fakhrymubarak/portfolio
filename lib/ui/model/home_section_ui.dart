// Data Classes
class HomeSectionUi {
  final String title;
  final String? subtitle;
  final String description;
  final String imagePath;
  final String btnInteraction1;
  final String btnInteraction2;
  final TechStackSectionUi techStackSection;

  HomeSectionUi({
    required this.title,
    this.subtitle,
    required this.description,
    required this.imagePath,
    required this.btnInteraction1,
    required this.btnInteraction2,
    required this.techStackSection,
  });
}

class TechStackSectionUi {
  final String title;
  final List<TechStack> stacks;
  final List<TechStack> highlightStacks;

  TechStackSectionUi({required this.title, required this.highlightStacks, required this.stacks});
}

class TechStack {
  final String iconPath;
  final String name;

  TechStack({required this.name, required this.iconPath});
}
