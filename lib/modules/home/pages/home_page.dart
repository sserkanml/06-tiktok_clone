import 'package:flutter/material.dart';
import 'package:new_tiktok/constant/video_data.dart';
import 'package:new_tiktok/modules/video/pages/video_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(scrollDirection: Axis.vertical,itemCount: videoData.length,itemBuilder: ((context, index) {
   
       return VideoPage(songName: videoData[index]["songName"],profileImg: videoData[index]["profileImg"],shares: videoData[index]["shares"],likes:videoData[index]["likes"],comments: videoData[index]["comments"],albumImg: videoData[index]["albumImg"],videoUrl: videoData[index]["videoUrl"],profileName: videoData[index]["profileName"],description:videoData[index]["description"],);
    }));
  }
}

class followForU extends StatelessWidget {
  const followForU({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Padding(
      padding: const EdgeInsets.only(top:20.0),
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text("FOLLOWING",style: TextStyle(color: Colors.white.withOpacity(.8),fontSize: 13),),
        SizedBox(width: 4,),
        Text("  |  ",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 13)),
        SizedBox(width: 4,),
        Text("FOR U",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 13))
      ],),
    ),);
  }
}