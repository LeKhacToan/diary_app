typedef FolderID = String;

class Folder {
  Folder({
    required this.id,
    required this.name,
    required this.numberOfDiary,
    required this.created,
  });

  final FolderID id;
  final String name;
  final int numberOfDiary;
  final String created;
}
