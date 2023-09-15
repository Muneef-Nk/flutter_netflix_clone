import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/image_constants/image_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context).size;
    final height = _mediaQuery.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 313,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/Rectangle 26.png",),fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset("assets/svg/logos_netflix-icon.svg"),
                      Text('hihi'),
                      Text('hihi'),
                      Text('hihi'),
                    ],
                  ),
                  Text("nnj"),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(Icons.add),
                    Text("gfdi")
                  ],
                ),
                Container(
                  width: 110,
                  height: 45,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.play_arrow, color: Colors.black,),
                      Text("play", style: TextStyle(color: Colors.black),),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Icon(Icons.info_outline),
                    Text("gfdi")
                  ],
                ),
              ],
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text("ninin"))),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                  itemBuilder: (
                      context, index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
