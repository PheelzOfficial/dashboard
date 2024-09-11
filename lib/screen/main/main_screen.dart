import 'package:dashboard/screen/dashboard/component/side_menu.dart';
import 'package:dashboard/screen/dashboard/dashbaord_screen.dart';
import 'package:dashboard/screen/main/responsive.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
 MainScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      key:_scaffoldkey,
      drawer: const SideMenu(),
      body: SafeArea(child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         if(Responsive.isDesktop(context))
           const Expanded(
            child: SideMenu()
            ),
         
           Expanded(
            flex: 5,
            child: DashbaordScreen(scaffoldkey: _scaffoldkey,)),
        ],
      )),
    );
  }
}