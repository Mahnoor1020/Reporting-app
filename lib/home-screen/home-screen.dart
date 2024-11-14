import 'package:flutter/material.dart';
import 'package:process_project/home-screen/challenges-screen.dart';
import 'package:process_project/home-screen/development-process.dart';
import 'package:process_project/home-screen/lessons-screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/background.jpg'), // full screen ki background image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomContainer(
                title: 'Development Process Screen',
                backgroundImage: 'lib/assets/background.jpg',
                image: 'lib/assets/devprocess.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DevelopmentProcess()),
                  );
                },
              ),
              CustomContainer(
                title: 'Challenges Faced',
                backgroundImage: 'lib/assets/background.jpg',
                image: 'lib/assets/challenges.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => challengesScreen()),
                  );
                },
              ),
              CustomContainer(
                title: 'Lessons Learned',
                backgroundImage: 'lib/assets/background.jpg',
                image: 'lib/assets/learning.png',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => lessonScreen()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;
  final String backgroundImage;
  final String image;
  final Function onTap;

  CustomContainer({
    required this.title,
    required this.backgroundImage,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 100,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 40,
              height: 40,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
