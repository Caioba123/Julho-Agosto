import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatefulWidget {
  const MeuAplicativo({super.key});

  @override
  State<MeuAplicativo> createState() => _MeuAplicativoState();
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  // Variáveis para controlar o estado do aplicativo
  String _nomeDoApp = "Meu App Flutter";
  bool _mostrarPrimeiraImagem = true;

  // Caminhos das imagens que devem estar na sua pasta assets
  final String _imagem1 = 'assets/images/betao04.png';
  final String _imagem2 = 'assets/images/jean10.webp';

  void _alternarImagem() {
    setState(() {
      _mostrarPrimeiraImagem = !_mostrarPrimeiraImagem;
    });
  }

  void _mudarNome(String novoNome) {
    setState(() {
      _nomeDoApp = novoNome;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Troca de Imagem e Nome',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text(_nomeDoApp), // Nome do app muda aqui na barra
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // Campo para digitar e mudar o nome do aplicativo em tempo real
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Digite o novo nome do aplicativo',
                  border: OutlineInputBorder(),
                ),
                onChanged: _mudarNome,
              ),
              const SizedBox(height: 40),
              // Container que exibe a imagem atual com cantos arredondados
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.asset(
                  _mostrarPrimeiraImagem ? _imagem1 : _imagem2,
                  width: 250,
                  height: 250,
                  fit: BoxFit.cover,
                  // Tratamento de erro caso a imagem ainda não exista na pasta assets
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      width: 250,
                      height: 250,
                      color: Colors.grey[300],
                      child: const Icon(Icons.image_not_supported, size: 50),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              // Botão que faz a troca de imagens
              ElevatedButton.icon(
                onPressed: _alternarImagem,
                icon: const Icon(Icons.swap_horiz),
                label: const Text('Alternar Imagem'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
