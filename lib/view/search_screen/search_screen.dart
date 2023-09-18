import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../utils/image_constants/image_constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:isDark? dark:light,
      appBar: AppBar(
        backgroundColor: isDark?grey:light,
        elevation: 0,
        leadingWidth: 0,
        title: TextField(
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search,color: isDark?light:dark),
              suffixIcon: Icon(Icons.mic, color: isDark?light:dark),
              hintText: "Search for a show , movie, etc..",
            hintStyle: TextStyle(color: isDark?light:dark)
          ),
        ),
      ),
      body: ListView(
          children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Top Searches",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: isDark?light:dark),
          ),
        ),
        SizedBox(
          // height: double.infinity,
          child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index){
                return Container(
                  margin: EdgeInsets.only(bottom: 5),
                  width: double.infinity,
                  // height: 76,
                  color: isDark? grey:light,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 146,
                        height: 76,
                        // height: 20,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/images/search.png"), fit: BoxFit.cover)
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text("Citation", style: TextStyle(fontSize: 20, color: isDark?light:dark),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 110),
                        child: SvgPicture.asset(Images.playIcon,color: isDark?light:dark,),
                      )
                    ],
                  ),
                );
              }
          ),
        )
      ]),
    );
  }
}
