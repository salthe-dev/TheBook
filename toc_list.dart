
import 'package:flutter/material.dart';
import '../screens/chapter_screen.dart';

class TOCList extends StatelessWidget {
  final List<Map<String, dynamic>> chapters = [

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        final chapter = chapters[index];
        return ExpansionTile(
          title: Text("Chapter ${chapter['chapter_number']}: ${chapter['chapter_title']}"),
          children: chapter['subheadings'].map<Widget>((sub) => ListTile(
            title: Text(sub),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => ChapterScreen(
                  title: chapter['chapter_title'],
                  subheadings: [sub],
                ),
              ));
            },
          )).toList(),
        );
      },
    );
  }
}
