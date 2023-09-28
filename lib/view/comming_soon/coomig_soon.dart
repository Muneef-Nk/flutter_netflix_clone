import 'package:flutter/material.dart';

import '../../main.dart';
import '../../utils/color_constants/color_constant.dart';
import '../../widget/comming_soon_movies.dart';
import '../../widget/notification_container.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDark?dark:light,
      appBar: AppBar(
        backgroundColor: isDark?dark:light,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              width: 19,
              height: 19,
              decoration: BoxDecoration(
                color: netflixRed,
                shape: BoxShape.circle
              ),
              child: Icon(Icons.notifications, size: 13,),
            ),
            SizedBox(width: 10,),
            Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: isDark?light:dark),)
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 130,
            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index){
              return   Notificationcontainer();
            }),
          ),
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index){
            return CommingSoonMovies(index: index,);
          })


        ],
      ),
    );
  }
}
