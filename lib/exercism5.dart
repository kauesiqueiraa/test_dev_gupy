import 'package:flutter/material.dart';

class Exercism5 extends StatefulWidget {
  const Exercism5({super.key});

  @override
  State<Exercism5> createState() => CalcState();
}

class CalcState extends State<Exercism5> {
  double carroVelocidade = 90;
  double caminhaoVelocidade = 80;
  double distanciaTotal = 125;
  double tempoPedagio = 15;
  String resultado = "";

  void calcularDistancias() {
    double tempoPedagioEmHoras = tempoPedagio / 60;

    double tempoParaSeEncontrarem =
        distanciaTotal / (carroVelocidade + caminhaoVelocidade);

    double distanciaCarro =
        carroVelocidade * (tempoParaSeEncontrarem - tempoPedagioEmHoras);

    double distanciaCaminhao = caminhaoVelocidade * tempoParaSeEncontrarem;

    double distanciaRestanteCarro = distanciaTotal - distanciaCarro;
    double distanciaRestanteCaminhao = distanciaTotal - distanciaCaminhao;

    if (distanciaRestanteCarro < distanciaRestanteCaminhao) {
      resultado = "O carro está mais próximo de Ribeirão Preto.";
    } else {
      resultado = "O caminhão está mais próximo de Ribeirão Preto.";
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Clique no botão para calcular:',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: calcularDistancias,
          child: Text('Calcular Distâncias'),
        ),
        SizedBox(height: 20),
        Text(
          'Resultado: $resultado',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}
