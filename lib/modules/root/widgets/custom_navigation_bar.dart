import 'package:flutter/material.dart';
import 'package:new_tiktok/constant/navigation_Item_data.dart';
import 'package:new_tiktok/constant/pageIndex.dart';
import 'package:new_tiktok/modules/root/widgets/custom_navigation_item.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({ Key? key }) : super(key: key);

  @override
  _CustomNavigationBarState createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {

  @override
  void didChangeDependencies() {
   
    super.didChangeDependencies();
  }
  
  @override
  Widget build(BuildContext context) {
    final pageIndex=PageIndexState.of(context);
    final mediaheight=MediaQuery.of(context).size.height;
    return Container(
      height: mediaheight * 0.09,
      decoration: BoxDecoration(color: Colors.black.withOpacity(1)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceAround,children: navigataionItem.map((e) {
                return InkWell(onTap: (){
                     pageIndex?.changeIndex(e.index);
                },
                  child: CustomNavigationItem(item: e,));
        }).toList()),
      ),
    );
  }
}