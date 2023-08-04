import 'package:riverpod/riverpod.dart';

// Declare an provider for this todoState

final todoState = StateNotifierProvider<TodoState, List<String>>((ref) {
  return TodoState();
});

class TodoState extends StateNotifier<List<String>> {
  TodoState() : super([]);

  String? todo;

  add() {
    if (todo == null || todo == "") return;
    state = [...state, todo!];
    todo = null;
  }

  remove(String todo) {
    state.remove(todo);

    state = [...state];
  }

  edit({required String newTodo, required String oldTodo}) {
    state = state.map((todoList) => todoList == oldTodo ? newTodo : todoList).toList();
  }
}
