import 'package:diary_app/src/features/folder/data/folder_repository.dart';
import 'package:diary_app/src/features/folder/domain/folder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FolderService {
  FolderService(this.ref);
  final Ref ref;

  List<Folder> getList() {
    return ref.read(folderRepositoryProvider).getList();
  }
}

final folderServiceProvider = Provider<FolderService>((ref) {
  return FolderService(ref);
});
