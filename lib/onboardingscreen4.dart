import 'package:flutter/material.dart';
import 'package:homie2/onboardingscreen1.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.blue,
     appBar: AppBar(
      backgroundColor: Colors.blue
     ),
     body: Center(
       child: TextButton(onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => Onboardingscreen1()));
       }, child: const Text("Skip",style: TextStyle(
        color: Colors.white,
        fontSize: 24
       ), ),),
     )
    );
  }
}