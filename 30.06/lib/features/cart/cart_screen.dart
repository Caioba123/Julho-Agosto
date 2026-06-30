import 'package:flutter/material.dart';
import '../../shared/app_button.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Carrinho de Compras')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_cart, size: 64, color: Colors.blue),
            const SizedBox(height: 16),
            const Text('Seu carrinho está vazio.',
                style: TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            AppButton(
              label: 'Voltar para Loja',
              onPressed: () => Navigator.pop(context),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
