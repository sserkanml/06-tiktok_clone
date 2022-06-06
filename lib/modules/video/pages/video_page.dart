import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:new_tiktok/modules/video/widgets/following.dart';
import 'package:video_player/video_player.dart';



class VideoPage extends StatefulWidget {
  final String profileName;
  final String description;
  final String albumImg;
  final String profileImg;
  final String likes;
  final String shares;
  final String comments;
  final String videoUrl;
  final String songName;

  const VideoPage(
      {Key? key,
      required this.profileName,
      required this.description,
      required this.albumImg,
      required this.profileImg,
      required this.likes,
      required this.shares,
      required this.comments,
      required this.videoUrl,
      required this.songName})
      : super(key: key);

  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
late final   VideoPlayerController videoPlayerController;
  final bool looping=true;
 final bool autoplay=true;
late final  ChewieController _chewieController;
 
 @override
  void initState()  {
    videoPlayerController=VideoPlayerController.asset(widget.videoUrl);

  _chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio:5/8,
      autoInitialize: true,
      showControls: false,
      autoPlay: autoplay,
     
      looping: looping,
    
      errorBuilder: (context, errorMessage) {
        return Center(
          child: Text(
            errorMessage,
            style: TextStyle(color: Colors.white),
          ),
        );
      },
    );
   

    super.initState();
  }
 
 @override
  void dispose() {
    videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: Chewie(controller: _chewieController ),
        ),
        const Following(),
        Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15, 
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.profileName,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          widget.description,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8), fontSize: 13),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.music_note,
                              size: 20,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Text(
                              widget.songName,
                              style:
                                  TextStyle(color: Colors.white.withOpacity(.7)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                        Container(child: Stack(clipBehavior: Clip.none,children: [
                          Positioned(right: 4,bottom: -5,child: Container(width: 20,height: 20,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.pink),child: Center(child: SvgPicture.asset("assets/svg/add.svg",width: 10,height: 10,color: Colors.white,)),))
                        ]),width: 50,height: 50,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(widget.profileImg,))),)
                      ],),
                      Column(children: [
                        SvgPicture.asset("assets/svg/heart.svg",width: 35,height: 35,color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(widget.likes,style: TextStyle(color: Colors.white,fontSize: 15,),)
                      ],),
                       Column(children: [
                        SvgPicture.asset("assets/svg/yorum.svg",width: 35,height: 35,color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(widget.comments,style: TextStyle(color: Colors.white,fontSize: 15,),)
                      ],),
                       Column(children: [
                        SvgPicture.asset("assets/svg/share.svg",width: 35,height: 35,color: Colors.white,),
                        SizedBox(height: 5,),
                        Text(widget.comments,style: TextStyle(color: Colors.white,fontSize: 15,),)
                      ],),
                       Column(children: [
                        Container(width: 30,height: 30,decoration: BoxDecoration(shape: BoxShape.circle,image: DecorationImage(fit: BoxFit.cover,image: NetworkImage(widget.albumImg))),)
                      ],),
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
