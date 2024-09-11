import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key, required this.title, required this.svgimg, required this.onTap});

  final String title;
  final String svgimg;
  final VoidCallback onTap;
  // final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      onTap: onTap,
      leading: SvgPicture.asset(svgimg, color: Colors.white54, height: 17,),
      title: Text(title, style: const TextStyle(color: Colors.white54),),
    );
  }
}