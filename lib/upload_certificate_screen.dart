// ===============================================
//              TELA DE ENVIAR ATESTADO
// ===============================================

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class UploadCertificateScreen extends StatefulWidget {
  @override
  _UploadCertificateScreenState createState() =>
      _UploadCertificateScreenState();
}

class _UploadCertificateScreenState extends State<UploadCertificateScreen> {
  final TextEditingController _descriptionController = TextEditingController();
  String? selectedFileName;

  Future<void> selectFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFileName = result.files.single.name;
      });
    } else {
      // Usuário cancelou a seleção
      setState(() {
        selectedFileName = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enviar Atestado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Atestado',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  ElevatedButton.icon(
                    onPressed:
                        selectFile, // Chama a função para selecionar o arquivo
                    icon: Icon(Icons.upload_file),
                    label: Text('Anexar Arquivo'),
                    style: ElevatedButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                  ),
                  SizedBox(height: 10),
                  if (selectedFileName != null)
                    Text(
                      'Arquivo selecionado: $selectedFileName',
                      style: TextStyle(color: Colors.green),
                    ),
                ],
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _descriptionController,
              maxLines: 3,
              decoration: InputDecoration(
                labelText: 'Descrição',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context); // Volta para a tela anterior
                  },
                  child: Text('Cancelar'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Função para enviar o atestado
                  },
                  child: Text('Enviar'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
