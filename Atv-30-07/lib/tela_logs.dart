import 'package:flutter/material.dart';

class TelaLogs extends StatelessWidget {
  const TelaLogs({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> logs = [
      {
        'ip': '192.168.1.50',
        'usuario': 'admin@empresa.com',
        'dataHora': '24/07/2026 - 14:32:05',
        'justificativa': 'Alteração de permissão do usuário financeiro.'
      },
      {
        'ip': '10.0.0.12',
        'usuario': 'joao.silva',
        'dataHora': '24/07/2026 - 11:15:22',
        'justificativa': 'Exclusão de registro duplicado no banco de dados.'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Logs do Sistema"),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: logs.length,
        itemBuilder: (context, index) {
          final log = logs[index];

          return Card(
            child: ListTile(
              leading: const Icon(Icons.person),
              title: Text(log["usuario"]!),
              subtitle: Text(log["justificativa"]!),
              trailing: Text(log["ip"]!),
            ),
          );
        },
      ),
    );
  }
}
