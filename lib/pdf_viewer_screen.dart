// ===============================================
//            TELA PARA VISUALIZAR PDF
// ===============================================

import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class PdfViewerScreen extends StatefulWidget {
  final String pdfUrl;

  PdfViewerScreen({required this.pdfUrl});

  @override
  _PdfViewerScreenState createState() => _PdfViewerScreenState();
}

class _PdfViewerScreenState extends State<PdfViewerScreen> {
  late String localPath;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _downloadAndSavePdf();
  }

  Future<void> _downloadAndSavePdf() async {
    final response = await http.get(Uri.parse(widget.pdfUrl));
    final bytes = response.bodyBytes;
    final dir = await getTemporaryDirectory();
    final file = File('${dir.path}/temp_pdf.pdf');

    await file.writeAsBytes(bytes);
    setState(() {
      localPath = file.path;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visualizar PDF")),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : PDFView(
              filePath: localPath,
            ),
    );
  }
}
