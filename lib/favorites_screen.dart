import 'package:flutter/material.dart';

class FavoritesScreen extends StatelessWidget {
  // Lista de vídeos de exemplo (pode ser substituída por dados reais)
  final List<Map<String, String>> favoriteVideos = [
    {
      'title': 'Sessão de Meditação',
      'description': 'Uma sessão rápida de meditação para o dia a dia.',
      'duration': '5 min'
    },
    {
      'title': 'Exercícios Laborais',
      'description':
          'Exercícios simples para melhorar a postura e o bem-estar.',
      'duration': '10 min'
    },
    {
      'title': 'Aula de Mindfulness',
      'description': 'Prática de mindfulness para reduzir o estresse.',
      'duration': '8 min'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: favoriteVideos.length,
        itemBuilder: (context, index) {
          final video = favoriteVideos[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    video['description']!,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Duração: ${video['duration']}',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
