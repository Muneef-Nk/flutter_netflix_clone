import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../utils/image_constants/image_constants.dart';
import '../username/username.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),
        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Username()))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:isDark? dark:light,
      body: Center(child: SvgPicture.asset(Images.netflix_logo_text)),
    );
  }
}
