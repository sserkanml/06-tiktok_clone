import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:new_tiktok/constant/pageIndex.dart';

import 'package:new_tiktok/modules/root/models/navigation_Item.dart';

class CustomNavigationItem extends StatelessWidget {
  final Navigation_Item item;
  const CustomNavigationItem({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageIndex = PageIndexState.of(context);
    return item.label == "Create"
        ? Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white
               ),
            child: Center(child: SvgPicture.asset(item.assetsPath,width: 30,height: 30,color: Colors.black,),))
        : Column(
            children: [
              SvgPicture.asset(
                item.assetsPath,
                width: 25,
                height: 25,
                color: pageIndex?.pageIndex == item.index
                    ? Colors.white
                    : Colors.white.withOpacity(.6),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                item.label,
                style: TextStyle(
                    color: pageIndex?.pageIndex == item.index
                        ? Colors.white
                        : Colors.white.withOpacity(.6)),
              )
            ],
          );
  }
}
