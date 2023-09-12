import 'package:flutter/material.dart';
import 'package:demo/models/music.dart';
import 'package:demo/services/music_operations.dart';
import '../widgets/createappbar.dart';
import '../widgets/customgrid.dart';

class Home extends StatelessWidget {
  final Function _miniPlayer;
  Home(this._miniPlayer); // Dart Constructor ShortHand
  Widget createMusic(Music music) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                _miniPlayer(music, stop: true);
              },
              child: Image.network(
                music.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          Text(music.desc, style: TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOperations.getMusic();
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return createMusic(musicList[index]);
              },
              itemCount: musicList.length,
            ),
          )
        ],
      ),
    );
  }

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
        child: Column(
          children: [
            CreateAppBar(message: 'Good morning'),
            const SizedBox(
              height: 5,
            ),
            const CreateGrid(),
            createMusicList('Made for you'),
            createMusicList('Popular PlayList')
          ],
        ),
        
      )),
    );
  }
}

