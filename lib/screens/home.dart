import 'package:demo/widgets/creatlist.dart';
import 'package:flutter/material.dart';
import 'package:demo/models/music.dart';
import 'package:demo/services/music_operations.dart';
import '../widgets/createappbar.dart';
import '../widgets/customgrid.dart';

class Home extends StatelessWidget {
  final Function miniPlayer;
  final List<Music> musicList = MusicOperations.getMusic();
  Home(this.miniPlayer); // Dart Constructor ShortHand
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color.fromARGB(255, 58, 68, 73), Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0.1, 0.3])),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreateAppBar(message: 'Good morning'),
            const SizedBox(
              height: 5,
            ),
            CreateGrid(),
            CreatList(function: miniPlayer,label: 'Music For you',list: musicList,),
            CreatList(function: miniPlayer,label: 'Popular PlayList',list: musicList,),
          ],
        ),
        
      )),
    );
  }
}

