import 'package:flutter/material.dart';
import 'package:mystudybuddy/authscreen/loginscreen.dart';
import 'package:mystudybuddy/authscreen/singupscreen.dart';

import 'dropdownpage.dart';


class Welcomescreen extends StatefulWidget {
  const Welcomescreen({super.key});

  @override
  State<Welcomescreen> createState() => _WelcomescreenState();

}

class _WelcomescreenState extends State<Welcomescreen> {
  bool showLoginForm = false;
  String selectedLogin = "Email";

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
              Text("Welcome",style: TextStyle(fontSize: 60,fontWeight: FontWeight.bold),),
              SizedBox(height: 10),
              Text("Study Smarter, Not Harder",style: TextStyle(fontSize: 20),),
              SizedBox(height: 40),
              Image.asset(
                'assets/images/img.png',
                width: 169,
                height: 169,
              ),
              const SizedBox(height: 10),
              const Text(
                "Let's Get Started!",
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,

              ),
              const SizedBox(height: 10),

              SizedBox(height: 8,),
              TextButton(
                onPressed: () {
                  print("Skip pressed");
                },
                child: Text(
                  "Sign Up with Email",
                  style: TextStyle(fontSize: 16),
                ),
              )
              ,
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(270, 38),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SmartLoginUI()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img_4.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Continue with Gmail",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: const Size(270, 38),
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                      ),
                      onPressed: () {
                        setState(() {
                          showLoginForm = true;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/img_5.png',
                            width: 20,
                            height: 20,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Continue with Apple",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4,),
                    Text("I already have an account?",style: TextStyle(),),
                    SizedBox(height: 15,),
                    Text("By signing up, you agree to the Terms and Conditions and the Privacy Policy of My Study Buddy App",
                      style: TextStyle(fontSize: 12),textAlign: TextAlign.center,),
                  ],
                ),

              )

            ],
          ),
        ),
      ),
    );
  }
}


