import 'package:flutter/material.dart';

class MoviesContainer extends StatelessWidget {
  const MoviesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Container(
              margin: EdgeInsets.all(10),
              width: 103,
              height: 160,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage("assets/images/Rectangle 14.png"), fit: BoxFit.cover)
              ),
            );
          }),
    );
  }
}