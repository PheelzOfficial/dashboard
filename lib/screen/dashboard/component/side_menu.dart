import 'package:dashboard/screen/dashboard/component/drawer_list.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset("assets/images/logo.png")),
          DrawerList(title: 'Dashboard', svgimg: 'assets/icons/menu_Dashboard.svg', onTap: () {  },),
          DrawerList(title: 'Transaction', svgimg: 'assets/icons/menu_tran.svg', onTap: () {  },),
          DrawerList(title: 'Task', svgimg: 'assets/icons/menu_task.svg', onTap: () {  },),
          DrawerList(title: 'Documents', svgimg: 'assets/icons/menu_doc.svg', onTap: () {  },),
          DrawerList(title: 'Store', svgimg: 'assets/icons/menu_store.svg', onTap: () {  },),
          DrawerList(title: 'Notfication', svgimg: 'assets/icons/menu_notification.svg', onTap: () {  },),
          DrawerList(title: 'Profile', svgimg: 'assets/icons/menu_profile.svg', onTap: () {  },),
          DrawerList(title: 'Settings', svgimg: 'assets/icons/menu_setting.svg', onTap: () {  },),
        ],
      ),
    );
  }
}