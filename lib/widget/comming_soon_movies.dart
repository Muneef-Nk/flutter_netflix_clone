import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../main.dart';
import '../utils/color_constants/color_constant.dart';




class CommingSoonMovies extends StatelessWidget {
   CommingSoonMovies({
    super.key, required this.index,
  });
   final int index;

   List<String> videoLinks=[
     "RLzC55ai0eo",
     "VzT2xurZrbI",
     "ySYHcfvrmyw",
     "7xQCCw5sbdY",
     "ATElufr0OiE",
   ];


  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoLinks[index],
    );

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
            child: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
            ),
          ),

          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  IconButton(onPressed: (){
                    print("you clicked remainder");
                    }, icon: Icon(Icons.notifications,color: isDark?light:dark)),
                  Text("Remainder", style: TextStyle(color: isDark?light:dark, fontSize: 11),)
                ],
              ),
              Column(
                children: [
                  IconButton(onPressed: ()async{
                      // await FlutterShare.share(
                      //     title: 'Example share',
                      //     text: 'Example share text',
                      //     linkUrl: 'https://flutter.dev/',
                      //     chooserTitle: 'Example Chooser Title'
                      // );
                     // Share.share('check out my website https://example.com');
                    // String text = 'Check out this awesome link:';
                    // String url = 'https://example.com';

                    // Share.share('$text $url');
                    print("you clicked share");

                  }, icon: Icon(Icons.share,color: isDark?light:dark)),
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
