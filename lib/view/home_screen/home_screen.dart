import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../utils/image_constants/image_constants.dart';
import '../../widget/headings.dart';
import '../../widget/movies_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: isDark?dark:light,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 313,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          Images.bgImage,
                        ),
                        fit: BoxFit.cover)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(Images.netflix_logo_Icon),
                          Text('TV Shows',style: TextStyle(color: light),),
                          Text('Movies',style: TextStyle(color: light)),
                          Text('My List',style: TextStyle(color: light)),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Group 16.png"),
                        Text(
                          "#2 in Nigeria Today",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15, color: light),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.add,color: isDark?light:dark),
                      Text("My List", style: TextStyle(color: isDark?light:dark),)],
                  ),
                  Container(
                    width: 110,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: isDark?light:dark,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.play_arrow,size: 30,
                          color: isDark?dark:light,
                        ),
                        Text(
                          "Play",
                          style: TextStyle(color: isDark?dark:light, fontWeight: FontWeight.bold, ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Icon(Icons.info_outline, color: isDark?light:dark),
                      Text("Info", style: TextStyle(color: isDark?light:dark,),)],
                  ),
                ],
              ),
              Heading(heading: "Previews"),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                      );
                    }),
              ),
              Heading(
                heading: "Continue Watching for Emenalo",
                ),
          SizedBox(
            height: 180,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 103,
                    height: 170,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(7), topRight: Radius.circular(7)),
                              image: DecorationImage(image: AssetImage("assets/images/Rectangle 14.png"), fit: BoxFit.cover)
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 3,
                          color: Colors.grey,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          height: 40,
                          decoration: BoxDecoration(
                              color:isDark? lightDark:lightWhite,
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5), bottomRight: Radius.circular(5))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.info_outline, size: 20,color: isDark?light:dark),
                              Icon(Icons.more_vert, size: 20,color:  isDark?light:dark)
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
              Heading(
                heading: "Popular on Netflix",
              ),
              MoviesContainer(),
              Heading(
                heading: "Trending Now",
              ),
              MoviesContainer(),
              Heading(
                heading: "Top 10 in Nigeria Today",
              ),
              MoviesContainer(),
              Heading(heading: "My List"),
              MoviesContainer(),
              Heading(heading: "African Movies"),
              MoviesContainer(),
              Heading(heading: "Nollywood Movies & TV"),
              MoviesContainer(),
              Heading(heading: "Netflix Originals"),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index){
                  return Container(
                    margin: EdgeInsets.all(10),
                    width: 154,
                    height: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("assets/images/netflix_or.png"), fit: BoxFit.cover)
                    ),
                  );
                }),
              ),
              Heading(heading: "Watch It Again"),
              MoviesContainer(),
              Heading(heading: "New Releases"),
              MoviesContainer(),
              Heading(heading: "TV Thrillers & Mysteries"),
              MoviesContainer(),
              Heading(heading: "US TV Shows"),
              MoviesContainer()
            ],
          ),
        ),
      ),
    );
  }
}


