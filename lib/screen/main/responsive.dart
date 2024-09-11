import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({super.key, required this.mobile, required this.desktop, required this.tablet});
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;

  static bool isMobile(BuildContext context)=> MediaQuery.of(context).size.width < 850;
  static bool isTable(BuildContext context)=> MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;
  static bool isDesktop(BuildContext context)=> MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    if(size.width >= 1100){
      return desktop;
    }else if(size.width >= 850){
      return tablet;
    }else{
      return mobile;
    }
  }
}