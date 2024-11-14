import 'package:flutter/material.dart';

class DevelopmentProcess extends StatefulWidget {
  const DevelopmentProcess({super.key});

  @override
  State<DevelopmentProcess> createState() => _DevelopmentProcessState();
}

class _DevelopmentProcessState extends State<DevelopmentProcess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            'The mobile app development process begins with defining the app idea and setting goals.This stage involves identifying the app purpose target audience and core features along with setting clear objectives such as user monetization.Once the concept is clear a feasibility assessment follows to set the budget. Select a suitable technology stack like Flutter or  React Native and decide on target platforms iOS Android ',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 24, // Text size
              fontWeight: FontWeight.bold, // Makes the text bold
            ),
          ),
        ),
      ),
    );
  }
}
