import 'package:flutter/material.dart';
import '../../shared/app_button.dart';
import '../auth/login_screen.dart';
import '../products/product_detail_screen.dart';
import '../cart/cart_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Shop')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bem-vindo à Home!',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 24),
              AppButton(
                label: 'Ir para Login',
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const LoginScreen())),
              ),
              const SizedBox(height: 12),
              AppButton(
                label: 'Ver Detalhes do Produto',
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const ProductDetailScreen())),
              ),
              const SizedBox(height: 12),
              AppButton(
                label: 'Abrir Carrinho',
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const CartScreen())),
              ),
              const SizedBox(height: 12),
              AppButton(
                label: 'Ver Meu Perfil',
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const ProfileScreen())),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
