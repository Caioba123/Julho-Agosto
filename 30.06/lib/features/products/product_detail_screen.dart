import 'package:flutter/material.dart';
import '../../shared/app_button.dart';
import '../../shared/currency_utils.dart';
import 'product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  final ProductModel mockProduct =
      const ProductModel(id: '1', name: 'Smartphone Premium', price: 2499.90);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(mockProduct.name)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mockProduct.name,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(CurrencyUtils.toReais(mockProduct.price),
                style: const TextStyle(fontSize: 18, color: Colors.green)),
            const SizedBox(height: 24),
            AppButton(
              label: 'Voltar',
              onPressed: () => Navigator.pop(context),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
