import 'package:flutter/material.dart';
import 'package:homie2/home.dart';
import 'package:homie2/login.dart';


class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("SIGN UP", style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.center,),
                const SizedBox(
                  width: 257,
                  child: Image(image: AssetImage('assets/Signup.png'))),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Username', style: TextStyle(
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
                      hintText: "John Doe",
                      border: InputBorder.none
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Email", style: TextStyle(
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
                      hintText: "info@gmail.com",
                      border: InputBorder.none
                    ),
                  ),
                ),
                 const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Password", style: TextStyle(
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
                      hintText: "************",
                      border: InputBorder.none
                    ),
                  ),
                ),
                const Row(
                  children: [
                    
                  ],
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue
                  ),
                  child: TextButton(onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
                  }, child: const Text("Sign Up",
                  style: TextStyle(
                    color: Colors.white
                  ),)
                  )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                    }, child: const Text("Login", style: TextStyle(
                      color: Colors.black
                    )))
                  ],
                )
              ],
            ),
          ),
               ),
       )
    );
  }
}