// ===============================================
//                TELA INICIAL
// ===============================================

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
        title: Image.asset(
          'assets/images/accenture-logo.png',
          width: 90,
          height: 90,
          fit: BoxFit.contain,
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
                color: Color(0xff0f2f50),
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
                      videoId: 'pEFkBfEeb5k', // ID do vídeo do YouTube
                    ),
                    AnnouncementCard(
                      title: 'Nova Política de Saúde',
                      imageUrl:
                          'https://newsroom.accenturebr.com/br/news/2022/media_1318020fb4a018a2b313f9361625154f0343996bf.png?width=750&format=png&optimize=medium', // Miniatura para um documento url
                    ),
                    AnnouncementCard(
                      title: 'Política de Privacidade',
                      pdfUrl:
                          'https://www.accenture.com/content/dam/accenture/final/a-com-migration/pdf/pdf-146/Accenture-Formulario-De-Consentimento-E-Declaracao-De-Privacidade.pdf', // URL do PDF
                    ),
                    AnnouncementCard(
                      title: 'Novo Logo da Empresa',
                      imageUrl:
                          'https://media.licdn.com/dms/image/v2/D4D0BAQGnTzpspJeSJQ/company-logo_200_200/company-logo_200_200/0/1685549725415/accenturedigitalproductsdev_logo?e=2147483647&v=beta&t=RLZEXrbG8MF1MgXR_03KqcRKgfLgwYW1941oGgBH0eI', // URL da imagem
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
                                  'videoId': 'Y0beKLRf-fI'
                                },
                                {
                                  'title': 'Ameaças e Vulnerabilidades',
                                  'videoId': 'yMaPEZVAuqk'
                                },
                                {
                                  'title': 'Melhores Práticas de Segurança',
                                  'videoId': 'PxcQu1wA2mY'
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
                      videoId: 'xfF6WV_cDgU',
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
                      videoId: '_N7w60QE5rw',
                      title: 'Laboral Corpo Todo',
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
                    VideoThumbnailCard(
                      videoId: 'sJjyX9W-E-Y',
                      title: 'Meditação para Ansiedade',
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
                      videoId: 'UhOH4TFqxpo',
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
