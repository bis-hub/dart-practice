import 'package:flutter/material.dart';

class CloumnView extends StatelessWidget {
  const CloumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.vaccines,
                size: 100,
                color: Colors.green,
              ),
              Icon(
                Icons.access_time_filled_sharp,
                size: 100,
                color: Colors.red,
              ),
              Icon(
                Icons.accessible_sharp,
                size: 100,
                color: Colors.blue,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Icon(
                Icons.add,
                size: 100,
                color: Colors.orange,
              ),
              Icon(
                Icons.favorite,
                size: 100,
                color: Colors.pink,
              ),
              Icon(
                Icons.music_note,
                size: 100,
                color: Colors.purple,
              ),
              Icon(
                Icons.star,
                size: 100,
                color: Colors.yellow,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
