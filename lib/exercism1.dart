import 'package:flutter/material.dart';

class Exercism1 extends StatefulWidget {
  @override
  _Exercism1tState createState() => _Exercism1tState();
}

class _Exercism1tState extends State<Exercism1> {
  int soma = 0;

  void calcSum() {
    int indice = 12;
    int k = 1;
    int somaTemp = 0;

    while (k < indice) {
      k = k + 1;
      somaTemp = somaTemp + k;
    }

    setState(() {
      soma = somaTemp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Resultado: $soma",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const SizedBox(
          width: 20,
        ),
        ElevatedButton(onPressed: calcSum, child: const Text("Calcular"))
      ],
    );
  }
}
