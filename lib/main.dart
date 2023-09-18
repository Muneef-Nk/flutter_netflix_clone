import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants/color_constant.dart';
import 'package:netflix_clone/view/splash_screen/splash_screen.dart';

void main() {
  runApp(NetflixClone());
}

bool isDark = true;

class NetflixClone extends StatelessWidget {
  const NetflixClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarTheme.of(context).copyWith(
            unselectedItemColor: isDark ? grey : grey.withOpacity(0.6),
            selectedItemColor: isDark ? light : dark,
            // backgroundColor: isDark? lightDark:light,
            backgroundColor: isDark ? Colors.black54.withOpacity(.90) : light),
      ),
      home: SplashScreen(),
    );
  }
}
