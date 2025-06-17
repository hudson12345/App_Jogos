class Jogo
{
  final String nome;
  final DateTime lancamento;
  final String empresa;
  final String genero;
  final String sinopse;
  final String pathimg;
  final String trailer;
  List<String> galeiraImg = [];

  Jogo(this.nome, this.lancamento, this.empresa, this.genero, this.sinopse, this.pathimg, this.trailer, this.galeiraImg);

  String dataLancamento()
  {
    final dt = lancamento.toString().split(' ');
    final d = dt[0].split('-').reversed.join('/');
    return d;
  }
  
}