import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/core/utils/date_bucket.dart';
import 'package:todo_app/models/todo_model.dart';

final todoProvider = NotifierProvider<TodoNotifier, List<Todo>>(
  TodoNotifier.new,
);

class TodoNotifier extends Notifier<List<Todo>> {
  @override
  List<Todo> build() => const []; // initial empty list

  /// Add a new todo
  void addTodo(String title, String description) {
    final todo = Todo(
      id: DateTime.now().millisecondsSinceEpoch.toString(), // unique id
      title: title,
      description: description,
      createdAt: DateTime.now(),
    );
    state = [todo, ...state];
  }

  /// Remove todos by IDs
  void removeTodos(List<String> ids) {
    final idSet = ids.toSet();
    state = state.where((todo) => !idSet.contains(todo.id)).toList();
  }

  /// Update an existing todo
  void updateTodo({
    required String id,
    String? title,
    String? description,
    bool? isDone,
  }) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(
          title: title,
          description: description,
          isDone: isDone,
        );
      } else {
        return todo;
      }
    }).toList();
  }

  /// Toggle completion state
  void toggleTodo(String id) {
    state = state.map((todo) {
      if (todo.id == id) {
        return todo.copyWith(isDone: !todo.isDone);
      } else {
        return todo;
      }
    }).toList();
  }
}

// --------------------------------------------------------------
class GroupSection {
  final String title; // Today / Yesterday / Older
  final String? subtitle; // optional (e.g., date line)
  final List<Todo> items;
  const GroupSection({required this.title, this.subtitle, required this.items});
}

final groupedTodosProvider =
    NotifierProvider<GroupedTodosNotifier, List<GroupSection>>(
      GroupedTodosNotifier.new,
    );

class GroupedTodosNotifier extends Notifier<List<GroupSection>> {
  @override
  List<GroupSection> build() {
    final todos = ref.watch(todoProvider); // listen to base list
    final now = DateTime.now();

    final today = <Todo>[];
    final yesterday = <Todo>[];
    final older = <Todo>[];

    for (final t in todos) {
      switch (bucketFor(t.createdAt, now)) {
        case DateBucket.today:
          today.add(t);
          break;
        case DateBucket.yesterday:
          yesterday.add(t);
          break;
        case DateBucket.older:
          older.add(t);
          break;
      }
    }

    // int byNewest(Todo a, Todo b) => b.createdAt.compareTo(a.createdAt);
    // today.sort(byNewest);
    // yesterday.sort(byNewest);
    // older.sort(byNewest);

    // final sections = <GroupSection>[];
    List<GroupSection> sections = [];
    if (today.isNotEmpty) {
      // sections.add(GroupSection(title: 'Today', items: today));
      sections = [GroupSection(title: 'Today', items: today), ...sections];
    }
    if (yesterday.isNotEmpty) {
      sections.add(GroupSection(title: 'Yesterday', items: yesterday));
    }
    if (older.isNotEmpty) {
      sections.add(GroupSection(title: 'Older', items: older));
    }
    return sections;
  }
}
