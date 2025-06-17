import 'package:flutter/material.dart';
import 'package:flutter_estudo/jogos.dart';
import 'package:flutter_estudo/segunda.dart';

void main() {
  runApp(const MaterialApp(title: 'App',
  home: MainApp(), ));
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  MainAPP createState() => MainAPP();
}

class MainAPP extends State{
//lista de jogos

 List<Jogo> jogo = [
   Jogo('Sonic', DateTime(1991,23,06), 'Sega', 'Plataforma', 'Sonic precisa salvar os animais inocentes do Dr Eggman', 'img/Sonic_the_Hedgehog_1991_capa.png', 'https://youtu.be/kCaAos6FeV0?si=DEdTjUisXxb4IhYj'),
   Jogo('Scott Pilgrim', DateTime(2010,10,08), 'Ubisoft', 'Beat em up', 'Scott enfrenta os 7 exs malvados para ficar com Ramona', 'img/scott_pilgrim.webp', 'https://youtu.be/wUU_wRjdi2I?si=i8awJW7ZoGlT88n5'),
   Jogo('Lego', DateTime(2014,506,06), 'Warner Bros. Games e Feral Interactive', 'Plataforma e Construção', 'Uma aventura no universo lego', 'img/lego.jpg', 'https://youtu.be/hEO0YJ2mzFs?si=CAZpVkC1oDjgTu-C'),
   Jogo('Kung Fu Panda', DateTime(2008,04,06), 'luvoflux e DreamWorks', 'Luta', 'Po se torna o dração guerreiro e precisa derrotar Tai lung', 'img/Kung-Fu-Panda.webp', 'https://youtu.be/OpbCWHVUHpU?si=tXPSiUaLjOKlI3ez'),
 ];

  @override  
  void initState() {super.initState();}

  @override 
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
           //define o titulo da app
           title: const Text('App Jogos'),
           //centraliza o título
           centerTitle: true,
           //muda a cor do background
           backgroundColor: const Color.fromARGB(255, 153, 9, 167),
        ),
        
        body: Center(
          child: Column(
            //alinha no centro da página - vertical -, com distribuição uniforme
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            spacing: 2,
          children: <Widget>[ 
            Expanded(
              child: ListView.builder(
                itemCount: jogo.length,
                shrinkWrap: true,
                padding: const EdgeInsets.all(5),
                scrollDirection: Axis.vertical,
                clipBehavior: Clip.antiAlias,
              itemBuilder: (BuildContext ctx, index)
              {
                return Card(
                  child: ListTile(
                    contentPadding: EdgeInsets.all(32), 
                    leading:CircleAvatar(backgroundImage: AssetImage(jogo[index].pathimg), radius: 32,),
                    title: Text(
                      jogo[index].nome, 
                      style: TextStyle(fontSize: 30, color: const Color.fromARGB(255, 153, 9, 167))
                    ),
                    subtitle: Text(jogo[index].empresa),
                    splashColor: const Color.fromARGB(255, 153, 9, 167),
                    hoverColor: const Color.fromARGB(255, 157, 211, 19),
                    onTap: () => Navigator.push(
                      context, 
                      MaterialPageRoute(builder: 
                      (context) => const SegundaPag(),
                      settings: RouteSettings(
                        arguments: jogo[index],
                      ),),
                    ),
                  )
                );
              },  
            ))
          ]
        ),
        ),
      ),
    );
  }
}
