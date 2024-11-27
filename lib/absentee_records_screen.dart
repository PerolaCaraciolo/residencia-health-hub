// ===============================================
//             TELA REGISTROS FALTOSOS
// ===============================================

import 'package:flutter/material.dart';

class AbsenteeRecordsScreen extends StatelessWidget {
  // Lista de registros de exemplo (pode ser substituída por dados reais)
  final List<Map<String, String>> absenteeRecords = [
    {'date': '15/10/2023', 'reason': 'Consulta médica'},
    {'date': '20/09/2023', 'reason': 'Descanso pós-cirurgia'},
    {'date': '07/08/2023', 'reason': 'Acompanhamento familiar'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registros Faltosos'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: absenteeRecords.length,
        itemBuilder: (context, index) {
          final record = absenteeRecords[index];
          return Card(
            margin: EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Data: ${record['date']}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Motivo: ${record['reason']}',
                    style: TextStyle(fontSize: 16),
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
