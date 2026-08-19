import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:api_do_clima/main.dart'; // Importa o seu aplicativo

void main() {
  // Teste da Etapa 4 - Verifica a comunicação com a API de Clima
  test('Verifica se a API responde e retorna uma temperatura numérica',
      () async {
    const url =
        'https://api.open-meteo.com/v1/forecast?latitude=-8.05&longitude=-34.88&current=temperature_2m';
    final response = await http.get(Uri.parse(url));

    expect(response.statusCode, 200, reason: 'A API não respondeu com sucesso');

    final dados = jsonDecode(response.body);
    final temperatura = dados['current']['temperature_2m'];

    expect(temperatura, isNotNull); // Verifica se não é nulo
    expect(temperatura, isA<num>()); // Verifica se é um número
  });

  // Teste da Etapa 5 - Simula o clique no aplicativo
  testWidgets('Simula uso do aplicativo e busca temperatura na tela',
      (WidgetTester tester) async {
    // Abre o aplicativo
    await tester.pumpWidget(const MeuAppClima());

    // Encontra o botão
    final botaoBuscar =
        find.widgetWithText(ElevatedButton, 'BUSCAR TEMPERATURA');
    expect(botaoBuscar, findsOneWidget);

    // Clica no botão
    await tester.tap(botaoBuscar);

    // Atualiza a tela para mostrar o "Carregando..."
    await tester.pump();

    // Aguarda até que a requisição da API termine e a tela atualize
    await tester.pumpAndSettle(const Duration(seconds: 5));

    // Verifica se a temperatura e o símbolo °C apareceram na tela
    expect(find.textContaining('°C'), findsOneWidget);
  });
}
