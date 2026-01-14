import 'package:flutter/material.dart';
import 'package:mystudybuddy/authscreen/singupscreen.dart';

class SmartLoginUI extends StatefulWidget {
  const SmartLoginUI({super.key});

  @override
  State<SmartLoginUI> createState() => _SmartLoginUIState();
}

class _SmartLoginUIState extends State<SmartLoginUI> {

  String selectedLogin = "Email";
  TextEditingController passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/img.png',
                    width: 124,
                    height: 124,
                  ),

                  const Text(
                    "Welcome Back!",
                    style: TextStyle(fontSize: 25,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8,),
                  Text("Login to Your account",),
                  SizedBox(height: 10),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    padding: const EdgeInsets.all(20),
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 15, offset: Offset(0, 8))
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        const Text(
                          "Log into your account",
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),


                        const SizedBox(height: 15),


                        /// Email / Phone
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Email"),
                            SizedBox(height: 5),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText:
                                selectedLogin == "Email" ? "Email" : "Phone Number",
                                prefixIcon: Icon(
                                    selectedLogin == "Email" ? Icons.email : Icons.phone),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 15),

                        /// Password
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Password"),
                            SizedBox(height: 5),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              // Forgot password action এখানে লিখো
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(color: Colors.yellow),
                            ),
                          ),
                        ),


                        const SizedBox(height: 6),

                        /// Login Button

                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: const Text("Log In", style: TextStyle(fontSize: 18)),
                          ),
                        ),


                        SizedBox(height: 12),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Singupscreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_4.png',
                                          height: 20,
                                          width: 80,
                                        ),

                                      ],
                                    ),
                                  ),
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.yellow,
                                    ),
                                    onPressed: () {
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Singupscreen()));
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/img_5.png',
                                          height: 20,
                                          width: 80,
                                        ),
                                      ],
                                    ),
                                  ),

                                ],
                              ),

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("No account?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Singupscreen()));
                                  },
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text("By signing up, you agree to the Terms and Conditions and the Privacy Policy of My Study Buddy App",
                              textAlign: TextAlign.center,
                            )

                          ],
                        ),

                      ],
                    ),
                  )


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
















