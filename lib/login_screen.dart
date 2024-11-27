// ===============================================
//                TELA DE LOGIN
// ===============================================

import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isForgotPasswordChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Health',
                    style: TextStyle(
                      fontFamily:
                          'Roboto', // Certifique-se de usar a fonte correta
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color:
                          Color(0xff0f2f50), // Azul escuro da palavra "Health"
                    ),
                  ),
                  TextSpan(
                    text: 'Hub',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color:
                          Color(0xff2fd0b6), // Azul "tiffany" da palavra "hub"
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: isForgotPasswordChecked,
                  onChanged: (value) {
                    setState(() {
                      isForgotPasswordChecked = value ?? false;
                    });
                    if (value == true) {
                      // Marca o checkbox e navega para a tela de redefinição
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()),
                      ).then((_) {
                        // Desmarca o checkbox ao voltar para a tela de login
                        setState(() {
                          isForgotPasswordChecked = false;
                        });
                      });
                    }
                  },
                ),
                Text(
                  'Esqueci a Senha',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: Text('LOGIN'),
            ),
            SizedBox(height: 80),
            Opacity(
              opacity: 0.9, // Valor entre 0.0 e 1.0
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    20), // Ajuste o valor para bordas mais arredondadas
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 110,
                  height: 110,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
