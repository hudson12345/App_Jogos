import 'package:flutter_estudo/jogos.dart';
import 'package:flutter/material.dart';

void galeriapag() {
  runApp(const GaleriaPag());
}

class GaleriaPag extends StatelessWidget {
  const GaleriaPag({super.key});

  @override
  Widget build(BuildContext context) {
    final jogo = ModalRoute.of(context)!.settings.arguments as Jogo;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Galeria de Imagens'),
        backgroundColor:const  Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(
        child: Column(
          children:[
            Image.asset(jogo.galeiraImg[0], width: 300, height: 200,),
            Divider(),
            Image.asset(jogo.galeiraImg[1], width: 300, height: 200,),
            Divider(),
            Image.asset(jogo.galeiraImg[2], width: 300, height: 200,),
          ]
        ),
      ),
    );
  }
}