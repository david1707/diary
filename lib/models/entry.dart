class Entry {
  final String title;
  final String text;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String imageName;

  Entry({
    required this.title,
    required this.text,
    required this.createdAt,
    required this.updatedAt,
    this.imageName = '',
  });
}
