// Data Classes
class HomeSection {
  final String title;
  final String? subtitle;
  final String description;
  final String image;
  final String btnInteraction1;
  final String btnInteraction2;
  final TechStackSection techStackSection;

  HomeSection({
    required this.title,
    this.subtitle,
    required this.description,
    required this.image,
    required this.btnInteraction1,
    required this.btnInteraction2,
    required this.techStackSection,
  });
}

class TechStackSection {
  final String title;
  final List<TechStack> stacks;
  final List<TechStack> highlightStacks;

  TechStackSection({required this.title, required this.highlightStacks, required this.stacks});
}

class TechStack {
  final String iconPath;
  final String name;

  TechStack({required this.name, required this.iconPath});
}
