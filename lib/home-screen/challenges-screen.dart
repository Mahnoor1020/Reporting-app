import 'package:flutter/material.dart';
class challengesScreen extends StatefulWidget {
  const challengesScreen({super.key});

  @override
  State<challengesScreen> createState() => _challengesScreenState();
}

class _challengesScreenState extends State<challengesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('lib/assets/background.jpg'),
          fit: BoxFit.cover)
        ),
        child: Center(
          child: Text('During the development of our mobile application, we encountered several challenges that tested our skills and adaptability. First, integrating various APIs proved to be complex, as ensuring seamless data flow and handling errors required extra attention. UI design compatibility across different devices and screen sizes also presented difficulties, as we needed to maintain a consistent, user-friendly layout. Debugging issues related to performance, particularly optimizing loading times and memory usage, demanded careful analysis and adjustment.',
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
