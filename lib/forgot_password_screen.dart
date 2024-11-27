// ===============================================
//           TELA DE ESQUECI MINHA SENHA
// ===============================================

import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController cpfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Esqueci Minha Senha'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(flex: 1), // Deixa o conteúdo a partir de 2/4 da tela
            Text(
              'Por favor, insira seu CPF para receber um link de redefinição de senha no seu email cadastrado.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: cpfController,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implementação para enviar o link de redefinição de senha
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Verifique seu email cooporativo para redefinir a senha.'),
                  ),
                );
              },
              child: Text('Enviar Link de Redefinição'),
            ),
            Spacer(flex: 2), // Espaço extra abaixo
          ],
        ),
      ),
    );
  }
}
