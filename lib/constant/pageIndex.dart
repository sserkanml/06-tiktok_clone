

import 'package:flutter/material.dart';

typedef void setIndex (int index);


class PageIndexState extends InheritedWidget{
  final Widget child;
  final pageIndex;
  final setIndex changeIndex;
  PageIndexState({Key? key,required this.changeIndex,required this.pageIndex,required this.child}) : super (key: key,child: child,);

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }
  static PageIndexState? of(BuildContext context){
    return context.dependOnInheritedWidgetOfExactType<PageIndexState>();
  }



}