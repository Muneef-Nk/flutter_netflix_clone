import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/image_constants/image_constants.dart';
class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: SvgPicture.asset(Images.netflix_logo, height: 37,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.edit,),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 75, right: 75),
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 25, mainAxisSpacing: 25),
                itemBuilder: (context, index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    height: 92,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(userNameList[index].image))
                    ),
                  ),
                  Text(userNameList[index].name, style: TextStyle(color: Colors.white, fontSize: 13),)
                ],
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 50),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Icon(Icons.add, size: 50),
                ),
                SizedBox(height: 20,),
                Text("Add Profile", style: TextStyle(color: Colors.white, fontSize: 12),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
