import 'package:flutter/material.dart';

class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  final Widget? myIcon;
   PopUpMenu({Key? key,required this.menuList, this.myIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(itemBuilder: (context)=> menuList,icon: myIcon,);

  }
}
