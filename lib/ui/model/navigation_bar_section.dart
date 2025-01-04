class NavigationBarSection {
  final int id;
  final String title;
  final bool isSelected;

  NavigationBarSection({
    required this.id,
    required this.title,
    this.isSelected = false,
  });

  NavigationBarSection copyWith({bool? isSelected}) {
    return NavigationBarSection(id: id, title: title, isSelected: isSelected ?? this.isSelected);
  }
}
