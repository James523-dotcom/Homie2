// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:homie2/dashboard.dart';
import 'package:homie2/resetpassword1.dart';
import 'package:homie2/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                Text("WELCOME TO HOMIE", style: TextStyle(
                  color: Colors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w700
                ),
                textAlign: TextAlign.center,),
                SizedBox(
                  width: 257,
                  child: Image(image: AssetImage('assets/Login.png'))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Email', style: TextStyle(
                        fontSize: 18
                      ),),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.0),
                   padding: EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      hintText: "info@gmail.com",
                      border: InputBorder.none
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
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
                   margin: EdgeInsets.symmetric(vertical: 8.0),
                   padding: EdgeInsets.symmetric(vertical: 2),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black26),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      hintText: "**********",
                      border: InputBorder.none
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Resetpassword1()));
                    }, child: Text("Forgot Password?", style: TextStyle(
                      color: Colors.black
                    ),)),
                  ],
                ),
                Row(
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> dashboardPage()));
                  }, child: Text("Login",
                  style: TextStyle(
                    color: Colors.white
                  ),)
                  )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => Signup()));
                    }, child: Text("Sign Up", style: TextStyle(
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