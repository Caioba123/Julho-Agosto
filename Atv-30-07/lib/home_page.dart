import 'package:flutter/material.dart';
import 'tela_logs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gerenciamento de Usuários"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),

            ListTile(
              leading: const Icon(Icons.dashboard),
              title: const Text("Dashboard"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Usuários"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.inventory),
              title: const Text("Produtos"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.bar_chart),
              title: const Text("Relatórios"),
              onTap: () {},
            ),

            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Configurações"),
              onTap: () {},
            ),

            // Navega para a TelaLogs
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text("Auditoria"),
              onTap: () {
                Navigator.pop(context); // fecha o Drawer

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TelaLogs(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          "Conteúdo da funcionalidade",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
