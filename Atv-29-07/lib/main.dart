import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistema',
      theme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1 - Cabeçalho (AppBar)
      appBar: AppBar(
        title: const Text("Gerenciamento de Usuários"), // 1.1

        actions: [
          // 1.2 - Ações principais
          IconButton(
            icon: const Icon(Icons.person_add),
            tooltip: "Adicionar",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.file_download),
            tooltip: "Exportar",
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.refresh),
            tooltip: "Atualizar",
            onPressed: () {},
          ),

          const SizedBox(width: 20),

          // 1.3 - Perfil do usuário logado
          const CircleAvatar(
            child: Icon(Icons.person),
          ),
          const SizedBox(width: 8),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text("João Silva"),
            ),
          ),

          // 1.4 - Logout
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: "Logout",
            onPressed: () {},
          ),
        ],
      ),

      // 2 - Menu de navegação
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
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text("Auditoria"),
              onTap: () {},
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
