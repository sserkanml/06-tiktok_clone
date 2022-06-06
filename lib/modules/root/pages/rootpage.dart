import 'package:flutter/material.dart';
import 'package:new_tiktok/constant/pageIndex.dart';
import 'package:new_tiktok/modules/comment/pages/comment_page.dart';
import 'package:new_tiktok/modules/create_video/pages/create_video_page.dart';
import 'package:new_tiktok/modules/home/pages/home_page.dart';
import 'package:new_tiktok/modules/root/widgets/custom_navigation_bar.dart';
import 'package:new_tiktok/modules/search/pages/search_page.dart';
import 'package:new_tiktok/modules/user/pages/profile_page.dart';

class RootState extends StatefulWidget {
  const RootState({ Key? key }) : super(key: key);

  @override
  _RootStateState createState() => _RootStateState();
}

class _RootStateState extends State<RootState> {
  int pageIndex=0;
  void ChangeIndex(int index){
    setState(() {
      pageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return PageIndexState(
      pageIndex: pageIndex,
      changeIndex: ChangeIndex,
      child: Rootpage(),
    );
  }
}

class Rootpage extends StatefulWidget {
  const Rootpage({ Key? key }) : super(key: key);

  @override
  _RootpageState createState() => _RootpageState();
}

class _RootpageState extends State<Rootpage> {

  @override
  Widget build(BuildContext context) {
      final pageIndex=PageIndexState.of(context);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: CustomNavigationBar(),
        body: IndexedStack(index: pageIndex?.pageIndex,children: [
          HomePage(),
          SearchPage(),
          CreateVideoPage(),
          CommentsPage(),
          ProfilePage()
        ],),
      ),
    );
  }
}

