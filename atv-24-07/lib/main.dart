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
      theme: ThemeData.light(),
      home: const TelaLogs(),
    );
  }
}

class TelaLogs extends StatelessWidget {
  const TelaLogs({super.key});

  @override
  Widget build(BuildContext context) {
    // Dados fictícios para simular a resposta de uma API ou banco de dados
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
        title: const Text('Logs do Sistema'),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {}, // Ícone de menu solicitado no desenho
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: logs.length,
        itemBuilder: (context, index) {
          final log = logs[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 16.0),
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Linha superior: Usuário e IP
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person,
                              size: 18, color: Colors.blueGrey),
                          const SizedBox(width: 8),
                          Text(
                            log['usuario']!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        'IP: ${log['ip']}',
                        style: TextStyle(color: Colors.grey[600], fontSize: 13),
                      ),
                    ],
                  ),
                  const Divider(height: 24),
                  // Data e Hora detalhada
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                        log['dataHora']!,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  // Justificativa do que foi feito
                  const Text(
                    'Justificativa:',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    log['justificativa']!,
                    style: const TextStyle(fontSize: 14, height: 1.3),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
