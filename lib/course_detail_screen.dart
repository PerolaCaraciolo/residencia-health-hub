import 'package:flutter/material.dart';
import 'video_player_screen.dart'; // Certifique-se de importar o video_player_screen.dart

class CourseDetailScreen extends StatelessWidget {
  final String title;
  final List<Map<String, String>> videos;

  CourseDetailScreen({required this.title, required this.videos});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemCount: videos.length,
        itemBuilder: (context, index) {
          final video = videos[index];
          return ListTile(
            leading: Icon(Icons.play_circle_fill, color: Colors.blue, size: 40),
            title: Text(video['title']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      VideoPlayerScreen(videoId: video['videoId']!),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
