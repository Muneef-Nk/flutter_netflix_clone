import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../utils/color_constants/color_constant.dart';
class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:isDark? dark:light,
      appBar: AppBar(
        backgroundColor:isDark? dark:light,
        elevation: 0,
        title: Text("Smart Downloads", style: TextStyle(fontSize: 15, color: isDark?light:dark),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Introducing Downloads For You", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: isDark?light:dark),),
            SizedBox(height: 20,),
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,id ut ipsum aliquam  enim non posuere pulvinar diam.",
            style: TextStyle(fontSize: 13, color: isDark?light:dark),
            ),
            SizedBox(height: 60,),
            Center(
              child: CircleAvatar(
                backgroundColor: grey,
                radius: 70,
              ),
            ),
            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 350,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CupertinoColors.activeBlue,
                ),
                child: Center(child: Text("SETUP", style: TextStyle(color: light),)),
              ),
            ),

            SizedBox(height: 30,),
            Center(
              child: Container(
                width: 300,
                height: 35,
                decoration: BoxDecoration(
                  color: grey,
                ),
                child: Center(child: Text("Find Something to Download", style: TextStyle(fontWeight: FontWeight.bold,  color: light),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}
