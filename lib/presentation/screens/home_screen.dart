import 'package:flutter/material.dart';
import 'package:river/const/color_const.dart';
import 'package:river/presentation/widgets/add_todo.dart';
import 'package:river/presentation/widgets/todo_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(shadowColor: Colors.transparent, toolbarHeight: 0, backgroundColor: ColorConst.onPrimaryColor),
      body: const SafeArea(
        child: Column(
          children: [
            TodoList(),
            AddTodo(),
          ],
        ),
      ),
    );
  }
}
