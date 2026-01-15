import 'package:flutter/material.dart';
class Continuepage extends StatelessWidget {
  const Continuepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(height: 80,),
                      Image.asset(
                        'assets/images/img.png',
                        width: 124,
                        height: 124,
                      ),
                      Text("My Study Buddy",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                        ),),
                      SizedBox(height: 130,),
                      ElevatedButton(
                        onPressed: () {
                          // button action
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black, // text color
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          "What should I call you?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(height: 230,),
                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(context, MaterialPageRoute(builder: (context)=>Continuepage()));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB8AEE0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("Continue",style: TextStyle(color: Colors.white),),
                        ),
                      ),


                      SizedBox(height: 15,),

                    ],
                  ),
                ),

            ),
          ),
        ],
      ),
    );
  }
}
