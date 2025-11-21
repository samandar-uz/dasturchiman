import '../dto/category.dart';

const String _assetPrefix = 'assets/images/quiz/';

const List<Category> categories = [
  Category(id: 1, name: 'Java', assetPath: '${_assetPrefix}java.png'),
  Category(id: 2, name: 'Flutter', assetPath: '${_assetPrefix}flutter.png'),
  Category(id: 3, name: 'HTML', assetPath: '${_assetPrefix}html.png'),
  Category(id: 4, name: 'Python', assetPath: '${_assetPrefix}python.png'),
  Category(id: 5, name: 'PHP', assetPath: '${_assetPrefix}php.png'),
  Category(id: 6, name: 'React', assetPath: '${_assetPrefix}react.png'),
  Category(id: 7, name: 'Spring', assetPath: '${_assetPrefix}sp.png'),
  Category(id: 8, name: 'C#', assetPath: '${_assetPrefix}csharp.png'),
];
