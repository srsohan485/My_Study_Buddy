import 'package:flutter/material.dart';
class Singupscreen extends StatefulWidget {
  const Singupscreen({super.key});

  @override
  State<Singupscreen> createState() => _SingupscreenState();
}

class _SingupscreenState extends State<Singupscreen> {
  String selectedLogin = "Email";
  TextEditingController nameController=TextEditingController();
  TextEditingController lastController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController repasswordController=TextEditingController();
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

                  SizedBox(height: 100,),
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
                            "Sign up for your account",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                          ),

                          const SizedBox(height: 20),

                          /// First Name & Last Name
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("First Name"),
                                    const SizedBox(height: 5),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "First Name",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text("Last Name"),
                                    const SizedBox(height: 5),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: "Last Name",
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          /// Email / Phone
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Email"),
                              const SizedBox(height: 5),
                              TextFormField(
                                decoration: InputDecoration(
                                  labelText:
                                  selectedLogin == "Email" ? "Email" : "Phone Number",
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
                              const Text("Password"),
                              const SizedBox(height: 5),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(height: 15),

                          /// Re-Password
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Re-Password"),
                              const SizedBox(height: 5),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  labelText: "Confirm Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ],
                          ),


                          const SizedBox(height: 15),

                          /// Login Button
                          SizedBox(
                            height: 40,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text("Log In", style: TextStyle(fontSize: 18)),
                            ),
                          ),

                          const SizedBox(height: 12),

                          /// Social Buttons + Footer
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
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/images/img_4.png',
                                        height: 20,
                                        width: 80,
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.yellow,
                                      ),
                                      onPressed: () {},
                                      child: Image.asset(
                                        'assets/images/img_5.png',
                                        height: 20,
                                        width: 80,
                                      ),
                                    ),
                                  ],
                                ),
                              ),


                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text("Have an account?"),
                                  TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      "Log In",
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),

                              const Text(
                                "By signing up, you agree to the Terms and Conditions and the Privacy Policy of My Study Buddy App",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ]

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

