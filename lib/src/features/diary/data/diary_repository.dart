import 'package:diary_app/src/features/diary/domain/diary.dart';

abstract class DiaryRepository {
  List<Diary> getList();
}
