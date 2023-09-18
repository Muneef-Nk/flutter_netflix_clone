import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/color_constants/color_constant.dart';


class CommingSoonMovies extends StatelessWidget {
  const CommingSoonMovies({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height:440,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 195,
            color: Colors.yellowAccent,
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(Icons.notifications, color: isDark?light:dark,),
                  Text("Remind Me", style: TextStyle(color: isDark?light:dark, fontSize: 11),)
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  Icon(Icons.share, color: isDark?light:dark,),
                  Text("Share", style: TextStyle(color: isDark?light:dark, fontSize: 11),)
                ],
              ),
              SizedBox(width: 20,)
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 20),
            child: Text("Season 1 Coming December 14" ,style: TextStyle(fontSize: 11, color: isDark?light:dark),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Castle & Castle", style: TextStyle(fontSize: 18, color: isDark?light:dark, fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(fontSize: 11, color: isDark?light:dark),
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Steamy • ", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.w600),),
                Text("Soapy • ", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.bold),),
                Text("Slow Burn • ", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.bold),),
                Text("Suspenseful • ", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.bold),),
                Text("Teen • ", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.bold),),
                Text("Mystery", style: TextStyle(fontSize: 11, color: isDark?light:dark, fontWeight: FontWeight.bold),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
