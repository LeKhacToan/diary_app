import 'package:diary_app/src/features/folder/data/folder_repository.dart';
import 'package:diary_app/src/features/folder/domain/folder.dart';

class FakeFolderRepository implements FolderRepository {
  @override
  List<Folder> getList() {
    List<Folder> folders = [
      Folder(
          id: '1',
          name: 'person notes',
          numberOfDiary: 23,
          created: '2022-12-06'),
      Folder(
          id: '2', name: 'feelings', numberOfDiary: 481, created: '2022-12-06'),
      Folder(
          id: '3',
          name: 'morning page',
          numberOfDiary: 15,
          created: '2022-12-06'),
      Folder(
          id: '3',
          name: 'greate ides',
          numberOfDiary: 60,
          created: '2022-12-06'),
    ];
    return folders;
  }
}
