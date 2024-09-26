import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class Exercism4 extends StatefulWidget {
  const Exercism4({super.key});

  @override
  State<Exercism4> createState() => _Exercism4State();
}

class _Exercism4State extends State<Exercism4> {
  String _markdownData = "";

  @override
  void initState() {
    super.initState();
    loadMarkdown();
  }

  Future<void> loadMarkdown() async {
    String data = await rootBundle.loadString('assets/exercism4.md');
    setState(() {
      _markdownData = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercício 4 - Markdown'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Exercício 4:',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Está no documento em Markdown com o nome exercism4.md',
            ),
            const SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: Markdown(data: _markdownData),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
