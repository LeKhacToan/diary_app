import 'package:diary_app/src/features/diary/domain/diary.dart';
import 'package:flutter/material.dart';

class DiaryCard extends StatelessWidget {
  const DiaryCard({super.key, required this.data});
  final Diary data;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: const Color.fromARGB(255, 229, 229, 229),
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            data.title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          Text(
            data.content,
            style: const TextStyle(color: Colors.grey),
          ),
        ]),
      ),
    );
  }
}