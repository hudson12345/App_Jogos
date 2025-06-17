class Jogo
{
  final String nome;
  final DateTime lancamento;
  final String empresa;
  final String genero;
  final String sinopse;
  final String pathimg;
  final String trailer;
<<<<<<< HEAD
  List<String> galeiraImg = [];

  Jogo(this.nome, this.lancamento, this.empresa, this.genero, this.sinopse, this.pathimg, this.trailer, this.galeiraImg);
=======

  Jogo(this.nome, this.lancamento, this.empresa, this.genero, this.sinopse, this.pathimg, this.trailer);
>>>>>>> 0de85e683fe1dbdb7b2ae8deb3ef50f2ad9d9251

  String dataLancamento()
  {
    final dt = lancamento.toString().split(' ');
    final d = dt[0].split('-').reversed.join('/');
    return d;
  }
  
}