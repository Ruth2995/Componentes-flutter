import 'package:flutter/material.dart';

class Avatar extends StatelessWidget{
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatar'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor:  Color.fromARGB(255, 0, 150, 32),
              child: Text('FH'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: AssetImage("1.jpg"),
        ),
      ),
    );
  }

}