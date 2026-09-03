class Pergunta {
  const Pergunta(this.texto, this.respostas);

  final String texto;
  final List<String> respostas;

  List<String> embaralha() {
    final resFinal = List<String>.of(respostas);
    resFinal.shuffle();
    return resFinal;
  }
}
