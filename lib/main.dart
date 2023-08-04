import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river/presentation/screens/home_screen.dart';
import 'package:river/theme/theming.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        theme: AppTheme.theme,
        title: 'River | The Todo!',
        home: const HomeScreen(),
      ),
    );
  }
}
