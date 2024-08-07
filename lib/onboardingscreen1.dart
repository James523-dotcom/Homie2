import 'package:flutter/material.dart';
import 'package:homie2/login.dart';

class Onboardingscreen1 extends StatelessWidget {
  const Onboardingscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Login()));
                }, child: const Text("Skip", style: TextStyle(
                  fontSize: 24,
                  color: Colors.white
                ),
                textAlign: TextAlign.right,)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15),
              child: Text("Find Your Perfect Place to stay", style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold
              )),
            ),
           SizedBox(
            height: 60,
           ),
           Image.asset('assets/house2.png', height: 510, fit: BoxFit.cover,)
          ],
        ),
      ),
    );
  }
}