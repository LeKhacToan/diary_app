import 'package:diary_app/src/features/diary/data/diary_repository.dart';
import 'package:diary_app/src/features/diary/domain/diary.dart';

class FakeDiaryrepository implements DiaryRepository {
  @override
  List<Diary> getList() {
    List<Diary> state = [
      Diary(
          title: 'How i found a new dream',
          content: 'Today i wish has conme true - to devote the whole ...'),
      Diary(
          title: 'my plan for the future me',
          content:
              'imagine the perfect life, the prefect family, dream house, dream car'),
      Diary(
          title: 'my personal strenghts',
          content: 'One of my greates strenghts at work that i have ...'),
      Diary(
          title: 'my faith in love',
          content:
              'I have allays believed in fate and destiny. Every one has their own path they have to discover. That somehow every litter thing that has')
    ];
    return state;
  }
}
