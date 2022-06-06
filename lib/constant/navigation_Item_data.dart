import 'package:new_tiktok/modules/root/models/navigation_Item.dart';
import 'package:new_tiktok/utils/navigation_item_path.dart';

List<Navigation_Item> navigataionItem = [
  Navigation_Item(
      index: 0, assetsPath: getNavigationItemPath("home"), label: "Home"),
 Navigation_Item(
      index: 4, assetsPath: getNavigationItemPath("search"), label: "Search"),
  Navigation_Item(
      index: 1, assetsPath: getNavigationItemPath("add"), label: "Create"),
 
       Navigation_Item(
      index: 2, assetsPath: getNavigationItemPath("comment"), label: "Comment"),
       Navigation_Item(
      index: 3, assetsPath: getNavigationItemPath("profile"), label: "Profile"),
  
];
