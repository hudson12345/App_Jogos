
import 'package:flutter_estudo/galeria.dart';
import 'package:flutter_estudo/jogos.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void segundapag() {
  runApp(const SegundaPag());
}

class SegundaPag extends StatelessWidget {
  const SegundaPag({super.key});

  @override
  Widget build(BuildContext context) {
    final jogo = ModalRoute.of(context)!.settings.arguments as Jogo;
    
    Future<void> launchURL() async {
   final Uri url = Uri.parse(jogo.trailer);
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Tela'),
        backgroundColor:const  Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(
        child: Column(
          children:[
          Text(jogo.nome, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(jogo.dataLancamento(), style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(jogo.empresa, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(jogo.genero, style: TextStyle(fontSize: 20, color: const Color.fromARGB(255, 145, 10, 166))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Text(jogo.sinopse, style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 145, 10, 166))),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          Image.asset(jogo.pathimg, width: 330, height: 300,),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          ElevatedButton(
            onPressed: launchURL,           
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
            ),
            child: const Text('trailer!'),
          ),
          Divider(height: 20, indent: 20, endIndent: 0, color: Colors.black),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context, 
              MaterialPageRoute(builder: 
              (context) => const GaleriaPag(),
              settings: RouteSettings(
                arguments: jogo
              ),),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll<Color>(Colors.green),
            ),
            child: const Text('GALERIA!'),
          ),
          ] 
        ),
      )
    );
  }
}