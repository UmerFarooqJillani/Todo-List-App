import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/models/todo_model.dart';

// NotifierProvider using Riverpod 2.0 API
final todoProvider = NotifierProvider<TodoNotifier, List<Todo>>(() {
  return TodoNotifier();
});

// Notifier class that manages the List<Todo>
class TodoNotifier extends Notifier<List<Todo>> {
  @override
  List<Todo> build() {
    // Initial state
    return [];
  }

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
