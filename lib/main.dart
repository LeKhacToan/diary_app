import 'package:diary_app/src/features/diary/presentation/diary_screen.dart';
import 'package:flutter/material.dart';
import 'package:diary_app/src/features/folder/presentation/folder_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: RootApp()));
}

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diary application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const FolderScreen(),
        '/diary': (context) => const DiaryScreen(),
      },
    );
  }
}
