import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../main.dart';
import '../../model/username_model.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../utils/image_constants/image_constants.dart';
import '../../widget/social_media_container.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark ? dark : light,
      appBar: AppBar(
        leadingWidth: 0,
        automaticallyImplyLeading: false,
        backgroundColor: isDark ? dark : light,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 92,
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: userNameList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 65,
                              height: 65,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage(userNameList[index].image),
                                      fit: BoxFit.cover)),
                            ),
                            Text(
                              userNameList[index].name,
                              style: TextStyle(
                                  color: isDark ? light : dark, fontSize: 13),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: isDark ? light : dark)),
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: isDark ? light : dark,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.edit,
                color: isDark ? light : dark,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Manage Profiles",
                style: TextStyle(color: isDark ? light : dark, fontSize: 14),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            width: double.infinity,
            height: 250,
            color:isDark? lightDark:lightWhite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/sms.svg", color: isDark?light:dark,),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Tell friends about Netflix.",
                      style: TextStyle(
                          fontSize: 19,
                          color: isDark?light:dark,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamusbibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                  style: TextStyle(color: isDark?light:dark, fontSize: 10),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Terms & Conditions",
                  style: TextStyle(
                    // color: Colors.white.withOpacity(.9),
                    color: isDark?light:dark,
                    fontSize: 10,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 11, right: 10),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 37,
                        width: 247,
                        child: TextField(
                          decoration: InputDecoration(
                              fillColor: Colors.black,
                              filled: true,
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Container(
                        width: 96,
                        height: 37,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                        ),
                        child: Center(
                            child: Text(
                          "Copy Link",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        )),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialMediaContainer(
                          image: Images.whatsAppLogo, color: whatssAppColor),
                      VerticalDivider(
                        color:isDark? Colors.white.withOpacity(.6):dark,
                        thickness: 1,
                      ),
                      SocialMediaContainer(
                          image: Images.facebookLogo, color: faceBookColor),
                      VerticalDivider(
                        color:isDark? Colors.white.withOpacity(.6):dark,
                        thickness: 1,
                      ),
                      SocialMediaContainer(
                          image: Images.emailLogo, color:isDark? light:dark),
                      VerticalDivider(
                        color:isDark? Colors.white.withOpacity(.6):dark,
                        thickness: 1,
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                          Text(
                            "More",
                            style: TextStyle(color: isDark?light:dark, fontSize: 13),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Row(
              children: [Image.asset(Images.check, width: 33, height: 33,color: isDark?light:dark,),
                Text("My List", style: TextStyle(fontSize: 14, color: isDark?light:dark),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Divider(color: Colors.white,thickness: .9,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("App Settings ", style: TextStyle(fontSize: 14, color: isDark?light:dark),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Account", style: TextStyle(fontSize: 14, color: isDark?light:dark),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Help", style: TextStyle(fontSize: 14, color: isDark?light:dark),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 10),
            child: Text("Sign Out", style: TextStyle(fontSize: 14, color: isDark?light:dark),),
          )
        ],
      ),
    );
  }
}
