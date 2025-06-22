class NavigationBarSectionUi {
  NavigationBarSectionUi({
    required this.id,
    required this.title,
    this.isSelected = false,
  });

  final int id;
  final String title;
  final bool isSelected;

  NavigationBarSectionUi copyWith({bool? isSelected}) {
    return NavigationBarSectionUi(
      id: id,
      title: title,
      isSelected: isSelected ?? this.isSelected,
    );
  }
}
