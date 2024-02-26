import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final caminhoImagens = [
    "images/luffy.jpg",
    "images/zoro.jpg",
    "images/usopp.jpg",
    "images/robin.jpg",
    "images/brook.jpg",
    "images/nami.jpg",
    "images/sanji.jpg",
    "images/chopper.jpg",
    "images/ace.jpg",
    "images/roger.jpg",
  ];

  final _frases = [
    "Não importa quantas vezes você cai, o importante é sempre se levantar. - Monkey D. Luffy, ",
    "Quando você está lutando pela coisa certa, não há necessidade de desistir. - Roronoa Zoro",
    "A coragem não é a ausência do medo, mas sim a determinação de seguir em frente apesar dele. - Usopp",
    "O verdadeiro poder vem da convicção de seguir seus sonhos, não importa o quão impossíveis eles pareçam. - Nico Robin",
    "Não importa o quão escuro seja o presente, o amanhã sempre trará uma nova luz. - Brook",
    "Os verdadeiros amigos são aqueles que permanecem ao seu lado, mesmo quando o mundo inteiro está contra você. - Nami",
    "A força não está apenas na habilidade de lutar, mas na capacidade de se levantar depois de ser derrotado. - Sanji",
    "A vida é como uma jornada no mar tempestuoso; é preciso coragem para navegar pelas ondas mais difíceis. - Tony Tony Chopper",
    "Não deixe que as cicatrizes do passado impeçam você de alcançar um futuro brilhante. - Portgas D. Ace",
    "O verdadeiro tesouro não está no final da jornada, mas sim nas experiências que acumulamos ao longo do caminho.-GolD.Roger",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroSorteado];
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
                caminhoImagens[Random().nextInt(caminhoImagens.length)],
                width: 140,
              ),
              Column(
                children: [
                  Text(
                    _fraseGerada,
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
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: gerarFrase,
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
