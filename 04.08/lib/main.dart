import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Demo',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const HomePage(),
    );
  }
}

// Página Inicial
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Página Inicial")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/welcome.png", height: 200),
            const SizedBox(height: 20),
            const Text("Welcome to Wellora"),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CadastroPage()),
              ),
              child: const Text("Ir para Cadastro"),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TermosPage()),
              ),
              child: const Text("Ver Termos de Uso"),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de Cadastro
class CadastroPage extends StatelessWidget {
  const CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cadastro")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/images/profile.png"),
            ),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: "Nome")),
            const TextField(decoration: InputDecoration(labelText: "E-mail")),
            const TextField(
              decoration: InputDecoration(labelText: "Senha"),
              obscureText: true,
            ),
            Row(
              children: [
                Checkbox(value: false, onChanged: (_) {}),
                const Text("Aceito os termos"),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const InfoPage()),
              ),
              child: const Text("Cadastrar"),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de Informações da Empresa
class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Informações")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/company.png", height: 100),
            const SizedBox(height: 20),
            const Text("Tech Solutions LTDA"),
            const Text("contato@techsolutions.com.br"),
            const Text("Telefone: (81) 3333-4455"),
            const Text("WhatsApp: (81) 98888-7766"),
            const Text("Endereço: Av. Boa Viagem, 1500"),
          ],
        ),
      ),
    );
  }
}

// Tela de Termos de Uso
class TermosPage extends StatelessWidget {
  const TermosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Termos de Uso")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/terms.png", height: 150),
            const SizedBox(height: 20),
            const Text(
                "Ao acessar e utilizar esta aplicação, você concorda..."),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: null,
              child: const Text("Política de Privacidade"),
            ),
          ],
        ),
      ),
    );
  }
}

// Tela de Logs
class LogsPage extends StatelessWidget {
  const LogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Logs")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset("assets/images/logs.png", height: 120),
            const SizedBox(height: 20),
            const Text("IP da máquina: Não foi possível obter"),
            const Text("Data: 04/08/2026"),
            const Text("Horário: 07:24:35"),
          ],
        ),
      ),
    );
  }
}

// Tela de Galeria
class GaleriaPage extends StatelessWidget {
  const GaleriaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Galeria de Imagens")),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Image.asset("assets/images/dragqueen.png"),
          Image.asset("assets/images/embroiderer.png"),
          Image.asset("assets/images/menu_left.png"),
          Image.asset("assets/images/menu_right.png"),
          Image.asset("assets/images/sculptor.png"),
          Image.asset("assets/images/farmer.png"),
        ],
      ),
    );
  }
}
