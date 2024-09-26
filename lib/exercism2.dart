import 'package:flutter/material.dart';

class Exercism2 extends StatelessWidget {
  int proximoA() => 9;
  int proximoB() => 128;
  int proximoC() => 49;
  int proximoD() => 100;
  int proximoE() => 13;
  int proximoF() => 20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('a) 1, 3, 5, 7, ... Próximo: ${proximoA()}',
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('b) 2, 4, 8, 16, 32, 64, ... Próximo: ${proximoB()}',
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('c) 0, 1, 4, 9, 16, 25, 36, ... Próximo: ${proximoC()}',
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('d) 4, 16, 36, 64, ... Próximo: ${proximoD()}',
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('e) 1, 1, 2, 3, 5, 8, ... Próximo: ${proximoE()}',
              style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Text('f) 2, 10, 12, 16, 17, 18, 19, ... Próximo: ${proximoF()}',
              style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
