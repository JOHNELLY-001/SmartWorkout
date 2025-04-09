import 'package:flutter/material.dart';

class Tips3Class extends StatelessWidget {
  const Tips3Class({super.key});

  @override
  Widget build (BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Great, so here you are! How do You want to train?', style: TextStyle(fontWeight: FontWeight.w300),)
            ],
          ),
        )
      ],
    )
    );
  }
}



