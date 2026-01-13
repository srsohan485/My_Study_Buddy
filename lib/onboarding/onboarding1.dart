import 'package:flutter/material.dart';

import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

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
                  "Turn your notes, lectures, or videos into flashcards, quizzes, study guides and fun study games.",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/img_1.png',
                  width: 315,
                ),
                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildDot(true),
                    buildDot(false),
                  ],
                ),
                SizedBox(height: 8,),
                TextButton(
                  onPressed: () {
                    print("Skip pressed");
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 16),
                  ),
                )
                ,
                SizedBox(height: 8,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(270, 38),
                    textStyle: const TextStyle(fontSize: 20),

                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Onboarding2()),
                    );
                  },
                  child: const Text("Next"),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

