import 'package:flutter_estudo/jogos.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class TrailerPag extends StatefulWidget{
  const TrailerPag({super.key});

  @override 
  State<TrailerPag> createState() => _TrailerPagState();
}

class _TrailerPagState extends State<TrailerPag>{

  late VideoPlayerController _trailer;

  @override 
  void initState(){
    super.initState();

    final jogo = ModalRoute.of(context)!.settings.arguments as Jogo;

    _trailer = VideoPlayerController.asset(
      jogo.trailer)..initialize().then((_){
        setState(() {
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: const Text('TRAILER'),
        backgroundColor:const  Color.fromARGB(255, 153, 9, 167),
      ),

      body: Center(
        child: _trailer.value.isInitialized?
        Column(
          children: [
            AspectRatio(aspectRatio: _trailer.value.aspectRatio,
            child: VideoPlayer(_trailer),),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {_trailer.pause();}, child: const Icon(Icons.pause)),
                Padding(padding: EdgeInsets.all(3)),
                ElevatedButton(onPressed: () {_trailer.play();}, child: const Icon(Icons.pause))
              ],
            )
          ],
        ) : Container(),
      ),
    );
  }
}