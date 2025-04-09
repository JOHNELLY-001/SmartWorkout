import 'package:flutter/material.dart';
import 'package:smart_one/welcome_guide/tips1.dart';
import 'screens/homepage01.dart';

void main() {
  runApp(const SmartApp());
}

class SmartApp extends StatelessWidget {
  const SmartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMART APP',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the splash screen (e.g., 6 seconds)
    Future.delayed(const Duration(seconds: 6), () {
      // After the delay, navigate to the HomePage01
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const TipsClass()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.green[300], // optional: set background color
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/icons/pexels-icon-1954524.jpeg'),
            ),
            SizedBox(
                height: 70.0,
                child: Text('SmartWorkout', style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),))
          ],
        ),

      ),
    );
  }



}

