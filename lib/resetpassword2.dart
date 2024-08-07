import 'package:flutter/material.dart';
import 'package:homie2/home.dart';

class ResetPassword2 extends StatelessWidget {
  const ResetPassword2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("RESET PASSWORD", style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.w700
              ),
              textAlign: TextAlign.center,),
              const SizedBox(
                width: 257,
                child: Image(image: AssetImage('assets/ResetPassword2.png'))),
                SizedBox(
                  height: 50,
                  child: Text("Enter new password to reset your password")),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('New Password', style: TextStyle(
                      fontSize: 18
                    ),),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                 padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "**********",
                    border: InputBorder.none
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Confirm New Password', style: TextStyle(
                      fontSize: 18
                    ),),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                 padding: const EdgeInsets.symmetric(vertical: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    hintText: "**********",
                    border: InputBorder.none
                  ),
                ),
              ),
           
           
              Container(
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue
                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Dashboard()));
                }, child: const Text("Next",
                style: TextStyle(
                  color: Colors.white
                ),)
                )),
            ]
          ),
        ),
      )
    );
  }
}