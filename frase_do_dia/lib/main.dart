import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class FraseMotivacional {
  final String frase;
  final String imagemPath;

  FraseMotivacional(this.frase, this.imagemPath);
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<FraseMotivacional> frasesMotivacionais = [
    FraseMotivacional("Não importa quantas vezes você cai, o importante é sempre se levantar.", "images/luffy.jpg"),
    FraseMotivacional("Quando você está lutando pela coisa certa, não há necessidade de desistir.", "images/zoro.jpg"),
    FraseMotivacional("A coragem não é a ausência do medo, mas sim a determinação de seguir em frente apesar dele.", "images/usopp.jpg"),
    FraseMotivacional("O verdadeiro poder vem da convicção de seguir seus sonhos, não importa o quão impossíveis eles pareçam.", "images/robin.jpg"),
    FraseMotivacional("Não importa o quão escuro seja o presente, o amanhã sempre trará uma nova luz.", "images/brook.jpg"),
    FraseMotivacional("Os verdadeiros amigos são aqueles que permanecem ao seu lado, mesmo quando o mundo inteiro está contra você.", "images/nami.jpg"),
    FraseMotivacional("A força não está apenas na habilidade de lutar, mas na capacidade de se levantar depois de ser derrotado.", "images/sanji.jpg"),
    FraseMotivacional("A vida é como uma jornada no mar tempestuoso; é preciso coragem para navegar pelas ondas mais difíceis.", "images/chopper.jpg"),
    FraseMotivacional("Não deixe que as cicatrizes do passado impeçam você de alcançar um futuro brilhante.", "images/ace.jpg"),
    FraseMotivacional("O verdadeiro tesouro não está no final da jornada, mas sim nas experiências que acumulamos ao longo do caminho.", "images/roger.jpg"),
  ];

  FraseMotivacional? _fraseMotivacional;

  @override
  void initState() {
    super.initState();
    _gerarFraseMotivacional();
  }

  void _gerarFraseMotivacional() {
    setState(() {
      _fraseMotivacional = frasesMotivacionais[Random().nextInt(frasesMotivacionais.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(
            child: Text(
              "Frases Motivacionais One Piece",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                _fraseMotivacional!.imagemPath,
                width: 130,
              ),
              Column(
                children: [
                  Text(
                    _fraseMotivacional!.frase,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red ),
                onPressed: _gerarFraseMotivacional,
                child: const Text(
                  " Nova Frase",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
