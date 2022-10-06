import 'package:diary_app/src/features/folder/domain/folder.dart';
import 'package:flutter/material.dart';

class FloderCard extends StatelessWidget {
  const FloderCard({super.key, required this.folder});
  final Folder folder;

  @override
  Widget build(BuildContext context) {
    return Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/diary');
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    folder.name,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const Icon(Icons.chevron_right)
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    folder.numberOfDiary.toString(),
                    style: const TextStyle(fontSize: 40),
                  )
                ],
              )
            ]),
          ),
        ));
  }
}
