import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:river/const/color_const.dart';
import 'package:river/presentation/helpers/presentation_helper.dart';
import 'package:river/state/todo_state.dart';
import 'package:sha_alert/button.dart';
import 'package:sha_alert/sha_alert.dart';

class TodoTitle extends ConsumerWidget {
  final int index;
  const TodoTitle({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: EdgeInsets.only(left: PresentationHelper.defaultPaddingP2.horizontal, right: PresentationHelper.defaultPaddingP2.horizontal, top: 4, bottom: 4),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (ctx) {
                ShaAlert.showHozzoAlert(
                  context,
                  title: "Delete? 🤐🗑️",
                  message: "Are you sure you want to delete this todo?\nThis action cannot be undone.",
                  firstButtonTitle: "Yes, delete",
                  secondButtonTitle: "No, cancel",
                  firstButtonType: ButtonType.primary,
                  primaryColor: ColorConst.primaryColor,
                  secondButtonType: ButtonType.secondary,
                  onFirstButtonPressed: () {
                    ref.read(todoState.notifier).remove(ref.read(todoState)[index]);
                    Navigator.pop(context);
                  },
                );
              },
              label: "Delete",
              backgroundColor: Colors.red,
            ),
          ],
        ),
        child: Container(
          padding: PresentationHelper.defaultPaddingP8,
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorConst.cardOnBackgroundColor,
          ),
          child: Text(
            ref.watch(todoState)[index],
            style: const TextStyle(color: ColorConst.primaryColor, fontSize: 20, fontWeight: FontWeight.w500, decoration: TextDecoration.none),
          ),
        ),
      ),
    );
  }
}
