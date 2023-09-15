import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class BottomNav extends StatefulWidget {
   BottomNav({super.key});



  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex=4;

  List pages=[
    HomeScreen(),
    Center(child: Text("1")),
    Center(child: Text("2")),
    Center(child: Text("3")),
    Center(child: Text("4")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "home"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
