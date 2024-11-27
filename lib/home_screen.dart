import 'package:flutter/material.dart';
import 'upload_certificate_screen.dart';
import 'absence_request_screen.dart';
import 'course_history_screen.dart';
import 'favorites_screen.dart';
import 'absentee_records_screen.dart';
import 'profile_screen.dart';
import 'course_detail_screen.dart';
import 'video_thumbnail_card.dart';
import 'video_player_screen.dart';
import 'announcement_card.dart';
import 'course_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context)
                    .openDrawer(); // Abre o Drawer de forma segura
              },
            );
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Logo Empresa', style: TextStyle(fontSize: 18)),
          ],
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Olá, Nome Funcionário',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Histórico de Cursos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CourseHistoryScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favoritos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritesScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.event_busy),
              title: Text('Informar Ausência'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AbsenceRequestScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.upload_file),
              title: Text('Enviar Atestado'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => UploadCertificateScreen()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Registros Faltosos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AbsenteeRecordsScreen()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SectionTitle(title: 'Comunicados'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    AnnouncementCard(
                      title: 'Mensagem da Diretoria',
                      videoId: 'VIDEO_ID_1', // ID do vídeo do YouTube
                    ),
                    AnnouncementCard(
                      title: 'Nova Política de Saúde',
                      imageUrl:
                          'https://via.placeholder.com/150', // Miniatura para um documento url
                    ),
                    AnnouncementCard(
                      title: 'Política de Privacidade',
                      pdfUrl: 'https://example.com/politica.pdf', // URL do PDF
                    ),
                    AnnouncementCard(
                      title: 'Novo Logo da Empresa',
                      imageUrl:
                          'https://via.placeholder.com/150', // URL da imagem
                    ),
                    // Adicione mais AnnouncementCards conforme necessário
                  ],
                ),
              ),
              SizedBox(height: 20),
              SectionTitle(title: 'Treinamentos / Cursos'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CourseCard(
                      title: 'Cibersegurança',
                      imageUrl:
                          'https://vanzolini.org.br/wp-content/uploads/2023/05/ciberseguranca-e-o-avanco-contra-os-ataques-ciberneticos.png', // URL de exemplo
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CourseDetailScreen(
                              title: 'Cibersegurança',
                              videos: [
                                {
                                  'title': 'Introdução à Cibersegurança',
                                  'videoId': 'VIDEO_ID_1'
                                },
                                {
                                  'title': 'Ameaças e Vulnerabilidades',
                                  'videoId': 'VIDEO_ID_2'
                                },
                                {
                                  'title': 'Melhores Práticas de Segurança',
                                  'videoId': 'VIDEO_ID_3'
                                },
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                    // Repita para outros cursos
                  ],
                ),
              ),
              SizedBox(height: 20),
              SectionTitle(title: 'Laboral'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    VideoThumbnailCard(
                      videoId: 'VIDEO_ID_1',
                      title: 'Exercícios de Alongamento',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                VideoPlayerScreen(videoId: 'VIDEO_ID_1'),
                          ),
                        );
                      },
                    ),
                    VideoThumbnailCard(
                      videoId: 'VIDEO_ID_2',
                      title: 'Meditação Guiada para Relaxamento',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                VideoPlayerScreen(videoId: 'VIDEO_ID_2'),
                          ),
                        );
                      },
                    ),
                    // Adicione mais VideoThumbnailCards conforme necessário
                  ],
                ),
              ),
              SizedBox(height: 20),
              SectionTitle(title: 'Meditação e Saúde'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    VideoCard(title: 'Meditação 1'),
                    VideoCard(title: 'Meditação 2'),
                    VideoCard(title: 'Meditação 3'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}

class VideoCard extends StatelessWidget {
  final String title;

  VideoCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.blueGrey[100],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

// class CourseCard extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final VoidCallback onTap;

//   CourseCard({
//     required this.title,
//     required this.imageUrl,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         width: 150,
//         height: 180, // Defina uma altura para o Container
//         margin: EdgeInsets.only(right: 16),
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Flexible(
//               child: ClipRRect(
//                 borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//                 child: Image.network(
//                   imageUrl,
//                   width: double.infinity,
//                   height: 100, // Defina uma altura para a imagem
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text(
//                 title,
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
