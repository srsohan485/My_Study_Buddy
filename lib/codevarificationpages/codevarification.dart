import 'package:flutter/material.dart';

import 'confirmpassword.dart';

class Codevarification extends StatefulWidget {
  final String email;
  const Codevarification({super.key, required this.email});

  @override
  State<Codevarification> createState() => _CodevarificationState();
}

class _CodevarificationState extends State<Codevarification> {
  final List<TextEditingController> otpControllers = List.generate(6, (_) => TextEditingController());

  @override
  void dispose() {
    for (var c in otpControllers) {
      c.dispose();
    }
    super.dispose();
  }

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
                colors: [Colors.blue.shade50, Colors.white],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Image.asset('assets/images/img.png', width: 124, height: 124),
                  const SizedBox(height: 10),
                  const Text(
                    "Request Password Reset",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Submit verification code",
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 150),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 400),
                    padding: const EdgeInsets.all(20),
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(color: Colors.black26, blurRadius: 17, offset: Offset(0, 8))
                      ],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Code Verification",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text("Enter OTP (One tone password) sent to ${widget.email}"),
                        const SizedBox(height: 25),

                        // OTP Fields
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(6, (index) {
                            return SizedBox(
                              width: 40,
                              child: TextField(
                                controller: otpControllers[index],
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                maxLength: 1,
                                decoration: const InputDecoration(
                                  counterText: '',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) {
                                  if (value.length == 1 && index < 5) {
                                    FocusScope.of(context).nextFocus();
                                  }
                                  if (value.isEmpty && index > 0) {
                                    FocusScope.of(context).previousFocus();
                                  }
                                },
                              ),
                            );
                          }),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text("200 minutes"),
                        ),

                        const SizedBox(height: 60),
                        SizedBox(
                          width: double.infinity,
                          height: 45,
                          child: ElevatedButton(
                            onPressed: () {
                              String otp = otpControllers.map((e) => e.text).join();
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ConfirmPassword()));
                              if(otp.length < 6){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text("Please enter complete code")),
                                );
                                return;
                              }
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text("Entered Code: $otp")),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey,
                            ),
                            child: const Text(
                              "Verify Code",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text("Resent",style: TextStyle(fontSize: 15),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
