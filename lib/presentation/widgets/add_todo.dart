import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/presentation/helpers/presentation_helper.dart';
import 'package:river/state/todo_state.dart';

class AddTodo extends ConsumerWidget {
  const AddTodo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController controller = TextEditingController();
    return Column(
      children: [
        const Divider(),
        Container(
          padding: PresentationHelper.defaultPaddingP8,
          width: double.infinity,
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: controller,
                  decoration: const InputDecoration(hintText: "Add Todo", border: OutlineInputBorder()),
                  onChanged: (e) => ref.read(todoState.notifier).todo = e,
                ),
              ),
              PresentationHelper.gapH1,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 90,
                  height: 56,
                  child: ElevatedButton(
                    style: PresentationHelper.defaultButtonStyle,
                    onPressed: () {
                      HapticFeedback.selectionClick();
                      ref.read(todoState.notifier).add();

                      // Hide keyboard
                      FocusScope.of(context).unfocus();

                      // Clear text field
                      controller.clear();
                    },
                    child: const Text("Add"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
