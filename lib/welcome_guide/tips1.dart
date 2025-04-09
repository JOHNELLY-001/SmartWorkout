import 'package:flutter/material.dart';
import 'package:smart_one/colors.dart';
import 'dart:ui';

import 'package:smart_one/welcome_guide/tips2.dart';

class TipsClass extends StatelessWidget {
  const TipsClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Center content
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Hi there, Welcome to SmartWorkout App.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 60.0, right: 35.0, top: 12.0),
                  child: Text(
                    'Let\'s get started with your personal details and preferences so that we can set your plan.',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          // Button at the bottom
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(builder: (context) => Tips2Class()),
                  ) ;
                },
              child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  backgroundColor: Colors.pinkAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}