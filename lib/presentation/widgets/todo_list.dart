import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/presentation/helpers/presentation_helper.dart';
import 'package:river/presentation/widgets/todo_tile.dart';
import 'package:river/state/todo_state.dart';

class TodoList extends ConsumerWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: PresentationHelper.defaultPaddingP7.horizontal),
            child: Text("Todo", style: PresentationHelper.defaultHeadingStyleH1),
          ),
          Expanded(
            child: Padding(
              padding: PresentationHelper.defaultPaddingP7,
              child: ListView.builder(
                // Hide keyboard when scroll
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: ref.watch(todoState).length,
                itemBuilder: (context, index) => TodoTitle(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
