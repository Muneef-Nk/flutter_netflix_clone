import 'package:flutter/material.dart';
import 'package:netflix_clone/view/bottom_nav/bottom_nav.dart';
import 'package:netflix_clone/view/splash_screen/splash_screen.dart';
import 'package:netflix_clone/view/username/username.dart';

void main(){
  runApp( NetflixClone());
}

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.black45,
        ),
      ),
      home: BottomNav(),
    );
  }
}
