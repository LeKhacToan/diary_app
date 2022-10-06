import 'package:diary_app/src/features/folder/data/fake_folder_repository.dart';
import 'package:diary_app/src/features/folder/domain/folder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class FolderRepository {
  List<Folder> getList();
}

final folderRepositoryProvider = Provider<FolderRepository>((ref) {
  return FakeFolderRepository();
});
