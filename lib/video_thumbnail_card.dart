// ===============================================
//              FORMATAÇÃO CARD VÍDEOS
// ===============================================

import 'package:flutter/material.dart';

class VideoThumbnailCard extends StatelessWidget {
  final String videoId;
  final String title;
  final VoidCallback onTap;

  VideoThumbnailCard({
    required this.videoId,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        height: 160,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.network(
                'https://img.youtube.com/vi/$videoId/0.jpg', // URL da miniatura do YouTube
                width: double.infinity,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
