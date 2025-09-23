class Todo {
  final String id;
  final String title;
  final String description;
  final bool isDone;
  final DateTime createdAt;

  const Todo({
    required this.id,
    required this.title,
    required this.description,
    this.isDone = false,
    required this.createdAt,
  });

  Todo copyWith({String? title, String? description, bool? isDone}) => Todo(
    id: id,
    title: title ?? this.title,
    description: description ?? this.description,
    isDone: isDone ?? this.isDone,
    createdAt: createdAt,
  );
}
