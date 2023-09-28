import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/color_constants/color_constant.dart';


class Notificationcontainer extends StatelessWidget {
  const Notificationcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      color:isDark? Colors.grey:lightWhite,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            width:  110,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("New Arrival", style: TextStyle(fontSize: 13, color: isDark?light:dark),),
                Text("El Chapo",style: TextStyle(fontSize: 13, color: isDark? Colors.grey.withOpacity(1):Colors.black.withOpacity(.8) )),
                Text("Nov 6", style: TextStyle(fontSize: 10, color: Colors.grey)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
