// Data Classes
class HomeSectionUi {
  HomeSectionUi({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.techStackSection,
    this.subtitle,
  });

  final List<String> title;
  final String? subtitle;
  final String description;
  final String imagePath;
  final TechStackSectionUi techStackSection;
}

class TechStackSectionUi {
  TechStackSectionUi({
    required this.title,
    required this.highlightStacks,
  });

  final String title;
  final List<TechStack> highlightStacks;
}

class TechStack {
  TechStack({required this.name, required this.iconPath});

  final String iconPath;
  final String name;
}
