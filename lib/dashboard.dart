import 'package:flutter/material.dart';
import 'package:homie2/home.dart';
import 'package:homie2/notification.dart';
import 'package:homie2/profile.dart';
class dashboardPage extends StatefulWidget {
  const dashboardPage({super.key});

  @override
  State<dashboardPage> createState() => _dashboardPageState();
}

class _dashboardPageState extends State<dashboardPage> {
  int _currentIndex = 0;
  void NavigateBottomBar(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  final List <Widget> _pages = [
    Dashboard(), 
    NotificationPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: NavigateBottomBar,
        currentIndex: _currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded),
        label: "Home"),BottomNavigationBarItem(icon: Icon(Icons.notifications,
        ),
        label: "Notification"),BottomNavigationBarItem(icon: Icon(Icons.person),
        label: "Profile"),
      ],
      backgroundColor: Colors.blue,
      selectedIconTheme: IconThemeData(),
      ),
        
      
    );
  }
}