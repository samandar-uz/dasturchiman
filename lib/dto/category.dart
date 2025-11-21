class Category {
  final int id;
  final String name;
  final String assetPath;

  const Category({
    required this.id,
    required this.name,
    required this.assetPath,
  });

  @override
  String toString() => 'Category(id: $id, name: $name)';
}
