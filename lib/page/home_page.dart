import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:theme_mode_demo/theme_provider/theme_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Theme Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                ref.read(appThemeProvider.notifier).setDarkTheme();
              },
              child: const Text('setDarkTheme'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(appThemeProvider.notifier).setLightTheme();
              },
              child: const Text('setLightTheme'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(appThemeProvider.notifier).toggleTheme();
              },
              child: const Text('setToggleTheme'),
            ),
            ElevatedButton(
              onPressed: () {
                ref.read(appThemeProvider.notifier).setSystemTheme();
              },
              child: const Text('setSystemTheme'),
            ),
          ],
        ),
      ),
    );
  }
}
