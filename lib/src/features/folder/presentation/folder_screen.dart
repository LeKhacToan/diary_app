import 'package:diary_app/src/features/folder/data/fake_folder_repository.dart';
import 'package:diary_app/src/features/folder/data/folder_repository.dart';
import 'package:diary_app/src/features/folder/domain/folder.dart';
import 'package:flutter/material.dart';
import 'package:diary_app/src/features/folder/presentation/folder_card.dart';

class FolderScreen extends StatefulWidget {
  const FolderScreen({super.key});

  @override
  State<FolderScreen> createState() => _FolderScreen();
}

class _FolderScreen extends State<FolderScreen> {
  FolderRepository folder = FakeFolderRepository();
  late List<Folder> folderData;

  @override
  void initState() {
    super.initState();
    folderData = folder.getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Folders'),
      ),
      body: ListView.builder(
        itemCount: folderData.length,
        itemBuilder: (BuildContext context, int index) => FloderCard(
          folder: folderData[index],
        ),
      ),
    );
  }
}
