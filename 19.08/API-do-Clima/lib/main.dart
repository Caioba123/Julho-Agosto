import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(const MeuAppClima());
}

class MeuAppClima extends StatelessWidget {
  const MeuAppClima({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TelaClima(),
    );
  }
}

class TelaClima extends StatefulWidget {
  const TelaClima({super.key});

  @override
  State<TelaClima> createState() => _TelaClimaState();
}

class _TelaClimaState extends State<TelaClima> {
  String _resultado = '';
  bool _carregando = false;

  Future<void> _buscarTemperatura() async {
    setState(() {
      _carregando = true;
      _resultado = '';
    });

    // URL da API de Open-Meteo
    const url = 'https://api-errada.com/clima';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final dados = jsonDecode(response.body);
        final temp = dados['current']['temperature_2m'];
        setState(() {
          _resultado = 'Temperatura atual: $temp °C';
        });
      } else {
        setState(() {
          _resultado = 'Erro ao buscar temperatura.';
        });
      }
    } catch (e) {
      setState(() {
        _resultado = 'Erro ao buscar temperatura.';
      });
    } finally {
      setState(() {
        _carregando = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CLIMA ATUAL'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Cidade: Recife',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _buscarTemperatura,
                child: const Text('BUSCAR TEMPERATURA'),
              ),
              const SizedBox(height: 20),
              if (_carregando)
                const Text(
                  'Carregando...',
                  style: TextStyle(fontSize: 18),
                )
              else
                Text(
                  _resultado,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
