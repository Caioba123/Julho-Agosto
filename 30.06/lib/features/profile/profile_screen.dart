import 'package:flutter/material.dart';
import '../../shared/app_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meu Perfil')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 16),
            const Text('Nome do Usuário',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Text('usuario@email.com',
                style: TextStyle(color: Colors.grey)),
            const SizedBox(height: 24),
            AppButton(
              label: 'Sair / Voltar',
              onPressed: () => Navigator.pop(context),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
