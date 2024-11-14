import 'package:flutter/material.dart';

class lessonScreen extends StatefulWidget {
  const lessonScreen({super.key});

  @override
  State<lessonScreen> createState() => _lessonScreenState();
}

class _lessonScreenState extends State<lessonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/background.jpg'),
          fit: BoxFit.cover)
        ),
        child: Center(
          child: Text('Upon completing the project, we learned the importance of planning, adaptability, and thorough testing. Planning helped us anticipate challenges, but flexibility was crucial as unexpected issues arose, especially with UI compatibility and performance optimization. We realized that early testing on multiple devices could have saved us time in later debugging. Moreover, we gained a deeper understanding of state management in Flutter and the need for efficient code to enhance app responsiveness. Overall, the experience strengthened our problem-solving skills and prepared us better for future projects.',
            style: TextStyle(
              color: Colors.white, // Text color
              fontSize: 24, // Text size
              fontWeight: FontWeight.bold, // Makes the text bold
            ),),
        ),
      ),
    );
  }
}
