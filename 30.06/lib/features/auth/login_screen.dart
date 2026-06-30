import 'package:flutter/material.dart';
import '../../shared/app_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tela de Login', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            AppButton(
              label: 'Voltar para Home',
              onPressed: () => Navigator.pop(context),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
