import 'package:flutter/material.dart';
import 'package:flutter_application_3/pergunta.dart';
import 'package:flutter_application_3/questoes.dart';

import 'botao_resposta.dart';

class Janela2 extends StatefulWidget {
  const Janela2({super.key});

  @override
  State<Janela2> createState() => _Janela2State();
}

class _Janela2State extends State<Janela2> {
  int perguntaAtual = 0;

  @override
  Widget build(BuildContext context) {
    Pergunta teste1 = questoes[perguntaAtual];

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Opacity(
              opacity: 0.8,
              child: Image.asset(
                'assets/imagens/palhaco_ouve.png',
                //color: const Color.fromARGB(40, 244, 67, 54),
              ),
            ),
          ),
          Text(teste1.texto),
          const SizedBox(
            height: 10,
          ),
          // vetor teste1.respostas;
          ...teste1.Embaralha().map((item) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: BotaoReposta(
                  cor: const Color.fromARGB(255, 224, 55, 47),
                  callResposta: () {
                    print('Acertou!');
                    print('Item: $item');
                    setState(() {
                      if (perguntaAtual < questoes.length - 1) {
                        perguntaAtual = perguntaAtual + 1;
                      } else {
                        perguntaAtual =
                            0; // reinicia o ciclo ao fim das 5 questões
                      }
                    });

                    print(perguntaAtual);
                  },
                  textoResposta: item),
            );
          }),
        ],
      ),
    );
  }
}
