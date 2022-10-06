import 'package:diary_app/src/features/diary/data/diary_repository.dart';
import 'package:diary_app/src/features/diary/data/fake_diary_repository.dart';
import 'package:diary_app/src/features/diary/domain/diary.dart';
import 'package:diary_app/src/features/diary/presentation/diary_card.dart';
import 'package:flutter/material.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<StatefulWidget> createState() => _DiaryScreen();
}

class _DiaryScreen extends State<DiaryScreen> {
  DiaryRepository diaryrepository = FakeDiaryrepository();
  late List<Diary> diaryData;

  @override
  void initState() {
    super.initState();
    diaryData = diaryrepository.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diaries'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'personal notes',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: diaryData.length,
              itemBuilder: (BuildContext context, int index) => DiaryCard(
                data: diaryData[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
