// ===============================================
//             FORMATAÇÃO CARD ARQUIVOS
// ===============================================

import 'package:flutter/material.dart';
import 'pdf_viewer_screen.dart';
import 'image_viewer_screen.dart';
import 'video_player_screen.dart';

class AnnouncementCard extends StatelessWidget {
  final String title;
  final String? videoId; // ID do vídeo do YouTube
  final String? pdfUrl; // URL do PDF
  final String? imageUrl; // URL da imagem

  AnnouncementCard({
    required this.title,
    this.videoId,
    this.pdfUrl,
    this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (videoId != null) {
          // Se for um vídeo, abre o VideoPlayerScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => VideoPlayerScreen(videoId: videoId!),
            ),
          );
        } else if (pdfUrl != null) {
          // Se for um PDF, abre o PdfViewerScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PdfViewerScreen(pdfUrl: pdfUrl!),
            ),
          );
        } else if (imageUrl != null) {
          // Se for uma imagem, abre o ImageViewerScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ImageViewerScreen(imageUrl: imageUrl!),
            ),
          );
        }
      },
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
                videoId != null
                    ? 'https://img.youtube.com/vi/$videoId/0.jpg' // Miniatura do vídeo
                    : pdfUrl != null
                        ? 'https://via.placeholder.com/150/FF0000/FFFFFF?text=PDF' // Placeholder para PDF
                        : imageUrl ??
                            'https://via.placeholder.com/150', // Placeholder ou miniatura para imagem
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
