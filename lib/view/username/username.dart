import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../main.dart';
import '../../model/username_model.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../utils/image_constants/image_constants.dart';
import '../bottom_nav/bottom_nav.dart';
class Username extends StatelessWidget {
  const Username({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:isDark? dark:light,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: isDark? dark:light,
        title: SvgPicture.asset(Images.netflix_logo_text, height: 37,),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.edit,color: isDark? light:dark,),
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
                    width: 98,
                    height: 92,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(userNameList[index].image), fit: BoxFit.cover)
                    ),
                  ),
                  Text(userNameList[index].name, style: TextStyle(color: isDark? light:dark, fontSize: 13),)
                ],
              );
            }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 50),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNav()));
                  },
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color:isDark? light:dark ,
                    ),
                    child: Icon(Icons.add, size: 50, color: isDark? dark:light,),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Add Profile", style: TextStyle(color: isDark? light:dark, fontSize: 12),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
