
import 'package:flutter/material.dart';

import '../authscreen/welcomescreen.dart';
class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  Widget buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: isActive ? 14 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade50,
                Colors.white,
              ],
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 44,),
              Image.asset(
                'assets/images/img.png',
                width: 121,
                height: 120,
              ),
              const SizedBox(height: 10),
              const Text(
                "Why You’ll Love It  ",
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 181),
              GestureDetector(
                onTap: () {
                  // এখানে তোমার action
                  print("Image Button Clicked");
                  // উদাহরণ: Navigator.push(...)
                },
                child: Image.asset(
                  'assets/images/img_3.png',
                  width: 228,
                  height: 140,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Study solo or play with friends — test your knowledge through games, track your streaks, and make learning fun again.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildDot(false),
                  buildDot(false),
                  buildDot(true),
                ],
              ),
              SizedBox(height: 10,),
              TextButton(
                onPressed: () {
                  print("Skip pressed");
                },
                child: Text(
                  "Skip",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  minimumSize: const Size(270, 40),
                  textStyle: const TextStyle(fontSize: 20),

                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Welcomescreen ()),
                  );
                },
                child: const Text("Continue"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
