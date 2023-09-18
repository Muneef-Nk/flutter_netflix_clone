import 'package:flutter/material.dart';

class SocialMediaContainer extends StatelessWidget {
  const SocialMediaContainer({
    super.key,
    required this.image,
    required this.color,
  });

  final String image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage(image), alignment: Alignment.center)),
    );
  }
}
