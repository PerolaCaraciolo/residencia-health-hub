// ===============================================
//           TELA CONFIGURAÇÕES DE CONTA
// ===============================================

import 'package:flutter/material.dart';

class AccountSettingsScreen extends StatefulWidget {
  final Function(bool) toggleTheme; // Recebe a função de alternância de tema

  AccountSettingsScreen({required this.toggleTheme});

  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  bool _notificationsEnabled = true;
  bool _darkModeEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações da Conta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Preferências',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Notificações'),
              subtitle: Text(
                  'Receber notificações de novos conteúdos e atualizações'),
              value: _notificationsEnabled,
              onChanged: (bool value) {
                setState(() {
                  _notificationsEnabled = value;
                });
              },
            ),
            SwitchListTile(
              title: Text('Modo Escuro'),
              subtitle: Text('Habilitar tema escuro para o aplicativo'),
              value: _darkModeEnabled,
              onChanged: (bool value) {
                setState(() {
                  _darkModeEnabled = value;
                });
                widget.toggleTheme(
                    value); // Chama a função de alternância de tema
              },
            ),
            Divider(),
            SizedBox(height: 20),
            Text(
              'Informações da Conta',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle:
                  Text('usuario@exemplo.com'), // Exemplo de email do usuário
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('Telefone'),
              subtitle:
                  Text('(00) 12345-6789'), // Exemplo de telefone do usuário
            ),
          ],
        ),
      ),
    );
  }
}
