import 'package:flutter/material.dart';
class Termscondition extends StatelessWidget {
  const Termscondition({super.key});

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
                  SizedBox(height: 50,),
                  Text("Terms & Conditions and Privacy Policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(height: 10,),
                  Text("Lorem ipsum dolor sit amet consectetur. Vel euismod odio quam risus suspendisse. Purus tristique amet consequat proin. A in sapien turpis a massa nisi. Posuere congue convallissuspendisse ut phasellus. Dui nisi luctus venenatis metus gravida turpis hendrerit. Nulla ornare sollicitudin donec nec euismod pellentesque tortor eleifend. Convallis in sed augue sit interdum morbi. Eget nibh nunc sit vitae.Vitae aliquam amet amet cras maecenas. Aliquam tristique nunc feugiat semper eget odio.Sed adipiscing lorem eget aliquam porttitor varius semper id. Bibendum sed sit aliquet porta cras. Non integer molestie luctus nisl sed pulvinar purus egestas.Ultrices ac est praesent convallis viverra vulputate. Eros sodales lacinia gravida gravida lorem varius quam risus at. Vitae varius sapien nibh pulvinar blandit massa. Praesent nibh sem ac in Eu arcu nunc egestas amet at. Nulla pulvinar egestas faucibus vel nullam dolor pellentesque dolor facilisDis mattis mauris quis a elementum pellentesque. Donec interdum sit cras velit augue sed luctus volutpat nullam. Sed purus adipiscing velit et cras sollicitudin suspendisse. Sagittis leo mauris nibh amet vel viverra.Fringilla mollis nisl tortor porttitor elit. Auctor lacus sed ac sed nam varius. Interdum sit bibendum urna at nunc netus viverra ultrices. Ut lorem non blandit condimentum neque. Risus aliquam sit faucibus amet sit aliquam sapien viverra purus. Augue aliquam sed egestas egestas feugiat semper cras aliquet sagittis. Arcu purus mauris risus amet quis odio. Semper in fermentum vitae nisl arcu sed tempus. At a at amet iaculis dictumst porta. Libero odio lacus adipiscing dolor semper commodo eros blandit. Scelerisque ut tincidunt enim tellus nisl amet diam duis aliquam. Donec sit elit turpis vitae dui nisl velit nulla. Imperdiet vulputate vestibulum tincidunt a cras. Augue bibendum morbi id hendrerit mattis platea."),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // First button action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("Decline"),
                        ),
                      ),

                      const SizedBox(width: 10),

                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Second button action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text("I Agree"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
