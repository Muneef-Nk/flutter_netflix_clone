import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/color_constants/color_constant.dart';


class Heading extends StatelessWidget {
  final String heading;
  const Heading({
    super.key, required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        heading,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: isDark?light:dark),
      ),
    );
  }
}
