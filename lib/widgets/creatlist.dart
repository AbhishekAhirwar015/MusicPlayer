
import 'package:demo/models/music.dart';
import 'package:flutter/material.dart';

class CreatList extends StatefulWidget {
  final Function function;
  final String label;
  final List list;
  const CreatList(
      {super.key,
      required this.function,
      required this.label,
      required this.list});

  @override
  State<CreatList> createState() => _CreatListState();
}

class _CreatListState extends State<CreatList> {
  Widget card(Music music) {
    return InkWell(
      onTap: () {
        widget.function(music,stop:true);
      },
      child: Card(
        color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 200,
            width: 200,
            child: Image.network(
              music.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            music.name,
            style: TextStyle(color: Colors.white),
          ),
          Text(music.desc, style: TextStyle(color: Colors.white))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return card(widget.list[index]);
              },
              itemCount: widget.list.length,
            ),
          )
        ],
      ),
    );
  }
}
