import 'package:flutter/material.dart';

class Exercism3 extends StatefulWidget {
  @override
  _Exercism3State createState() => _Exercism3State();
}

class _Exercism3State extends State<Exercism3> {
  final List<double> faturamentoDiario = [
    0,
    150.0,
    200.0,
    0,
    400.0,
    350.0,
    0,
    0,
    175.0,
    600.0,
    0,
    0,
    450.0,
    300.0,
    500.0,
    0,
    0,
    0,
    700.0,
    100.0,
    50.0,
    0,
    250.0
  ];

  double menorValor = 0;
  double maiorValor = 0;
  int diasAcimaMedia = 0;

  @override
  void initState() {
    super.initState();
    calcularFaturamento();
  }

  void calcularFaturamento() {
    List<double> diasComFaturamento =
        faturamentoDiario.where((valor) => valor > 0).toList();

    if (diasComFaturamento.isEmpty) {
      setState(() {
        menorValor = 0;
        maiorValor = 0;
        diasAcimaMedia = 0;
      });
      return;
    }

    menorValor = diasComFaturamento.reduce((a, b) => a < b ? a : b);
    maiorValor = diasComFaturamento.reduce((a, b) => a > b ? a : b);

    double mediaAnual =
        diasComFaturamento.reduce((a, b) => a + b) / diasComFaturamento.length;

    diasAcimaMedia =
        diasComFaturamento.where((valor) => valor > mediaAnual).length;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Menor valor de faturamento: R\$${menorValor.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Maior valor de faturamento: R\$${maiorValor.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            'Dias com faturamento acima da média: $diasAcimaMedia',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
