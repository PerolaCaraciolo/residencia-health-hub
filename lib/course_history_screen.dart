import 'package:flutter/material.dart';

class CourseHistoryScreen extends StatelessWidget {
  // Lista de cursos de exemplo (pode ser substituída por dados reais)
  final List<Map<String, String>> courseHistory = [
    {
      'title': 'Curso de Meditação',
      'description': 'Aprenda técnicas de meditação para o dia a dia.',
      'date': '10/10/2023'
    },
    {
      'title': 'Treinamento de Ergonomia',
      'description':
          'Melhore sua postura e evite lesões no ambiente de trabalho.',
      'date': '05/09/2023'
    },
    {
      'title': 'Curso de Primeiros Socorros',
      'description': 'Conheça técnicas básicas de primeiros socorros.',
      'date': '12/08/2023'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Histórico de Cursos'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: courseHistory.length,
        itemBuilder: (context, index) {
          final course = courseHistory[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    course['title']!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    course['description']!,
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Data: ${course['date']}',
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
