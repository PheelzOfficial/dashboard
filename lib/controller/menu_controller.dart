import 'package:flutter/material.dart';

class MenuController extends ChangeNotifier{
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  GlobalKey<ScaffoldState> get scaffoldkey => _scaffoldkey;

  void toggleDrawer() {
    if(!_scaffoldkey.currentState!.isDrawerOpen){
      _scaffoldkey.currentState!.openDrawer();
    }
  }
}