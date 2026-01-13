
import 'package:flutter/material.dart';

import 'onboarding3.dart';
class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                  "How It Works",
                  style: TextStyle(fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 181),
                Image.asset(
                  'assets/images/img_2.png',
                  width: 85,
                  height: 100,
                ),
                SizedBox(height: 10,),
                Text(
                  'Record or upload your lectures, and MyStudyBuddy will turn them into organized notes you can highlight, review, and study from — instantly.',
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
                      MaterialPageRoute(builder: (context) => Onboarding3()),
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
