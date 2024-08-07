import 'package:flutter/material.dart';
import 'package:homie2/login.dart';
import 'package:homie2/notification.dart';
import 'package:homie2/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(

              child: Text('Menu', style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),)),

              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.home_outlined, color: Colors.white,),
                    Text(" "),
                    Text("Home", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Dashboard()));
                },
              ),
               ListTile(
                title: Row(
                  children: [
                    Icon(Icons.notifications_outlined,  color: Colors.white,),
                    Text(" "),
                    Text("Notifications", style: TextStyle(
                      color: Colors.white
                    ),)
                  ],
                ),
                onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => NotificationPage()));
                },
              ),
               ListTile(
                title: Row(
                  children: [
                    Icon(Icons.person_outlined,  color: Colors.white,),
                    Text(" "),
                    Text("Account",style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600 ))
                  ],
                ),
                onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
               ListTile(
                title: Row(
                  children: [
                    Icon(Icons.exit_to_app_outlined,  color: Colors.white,),
                    Text(" "),
                    Text("Log out", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                onTap: () {
                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login()));
                },
              ),
          ],
        ),    
      ),
      
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle
        ),
        child: Image.asset('assets/profile.png',
        width: 50,
        height: 50,
        fit: BoxFit.fill,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Welcome", style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700
                  ),),
                  Text(" "),
                  Text("Edrick", style: TextStyle(color: Colors.blue,
                  fontWeight: FontWeight.w700,
                  fontSize: 20)
                  ,)
                ],
              ),
              Row(
                children: [
                  Text("Make your choice...")
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Container(
                width: 500,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 228, 228),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your keyword",
                    contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded)),
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Popular Hostels", style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w700,
                    fontSize: 15
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
                child: Row(
                  children: [
                    Image.asset('assets/bluehouse.png', width: 140, height: 140,),
                     Image.asset('assets/river.png', width: 140, height: 140,),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text("Recommendation", style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.w600
                  ),),
                  TextButton(onPressed: (){}, child: Text("View all", style: 
                  TextStyle(color: Colors.blue,
                  fontWeight: FontWeight.w600),
                  ))
                ],
              ),
              Image.asset('assets/recommendation.png')
            ],
          ),
        ),
      ),
    );
  }
}
