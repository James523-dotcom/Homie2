import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      elevation: 0,
      centerTitle: true,
      title: Text("Profile", style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
        fontSize: 24
      ),),
    ),
    body: Stack(
      children: [
        Container(
          height: 700,
          decoration: BoxDecoration(
            color: Colors.blue
          ),
          
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
            height: 500,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 230, 222, 222),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))
            ),
          ),
        ),
       Padding(
         padding: const EdgeInsets.only(left: 105, top: 30),
         child: Column(
           children: [
             Container(
              width: 145,
              height: 145,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(255, 10, 136, 240)
                
              ),
              child: Icon(Icons.person, 
              color: Colors.white,
              size: 140,
              ),
              ),
              SizedBox(
                height: 12,
              ),
              Text("Foryoung Junior", style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20
              ),),
              Text("Backend Developer")
           ],
         ),
       ),
       Padding(
         padding: const EdgeInsets.only(left: 210, top: 130 ),
         child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt, color: Colors.orange, size: 30,))),
       ),
       Column(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 25, right: 25, top: 300),
             child: Column(
               children: [
                 Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.lock, color: Colors.black,),
                      Text("   "),
                      Text("Change Password", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),),
                    ],
                  ))),
                  SizedBox(
                    height: 17,
                  ),
                   Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.dark_mode, color: Colors.black,),
                      Text("   "),
                      Text("Night Mode", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),),
                    ],
                  ))),
                  SizedBox(
                    height: 17,
                  ),
                   Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: TextButton(onPressed: (){}, child: Row(
                    children: [
                      Icon(Icons.logout, color: Colors.black,),
                      Text("   "),
                      Text("Log out", style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black
                      ),),
                    ],
                  ))),
                  SizedBox(
                    height: 17,
                  )
               ],
             ),
           ),
           
         ],
       )
      ],
    ),
    );
  }
}