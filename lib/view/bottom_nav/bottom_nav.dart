import 'package:flutter/material.dart';

import '../comming_soon/coomig_soon.dart';
import '../download/download_screen.dart';
import '../home_screen/home_screen.dart';
import '../more_screen/more_screen.dart';
import '../search_screen/search_screen.dart';

class BottomNav extends StatefulWidget {
   BottomNav({super.key});



  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex=0;

  List pages=[
    HomeScreen(),
    SearchScreen(),
    CommingSoon(),
    DownloadScreen(),
    MoreScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12,
        showUnselectedLabels: true,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          setState(() {
            currentIndex=index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "home", ),
          BottomNavigationBarItem(icon: Icon(Icons.search_rounded), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_library), label: "Coming Soon",),
          BottomNavigationBarItem(icon: Icon(Icons.download), label: "Downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "More"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}
