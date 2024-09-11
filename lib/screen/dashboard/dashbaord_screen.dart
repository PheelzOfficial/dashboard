import 'package:dashboard/constants.dart';
import 'package:dashboard/screen/dashboard/component/header.dart';
import 'package:dashboard/screen/dashboard/component/recent_files.dart';
import 'package:dashboard/screen/dashboard/component/storage_details.dart';
import 'package:dashboard/screen/dashboard/my_fields.dart';
import 'package:dashboard/screen/main/responsive.dart';
import 'package:flutter/material.dart';

class DashbaordScreen extends StatelessWidget {
  const DashbaordScreen({super.key, required this.scaffoldkey});
  final GlobalKey<ScaffoldState> scaffoldkey;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
               Header(scaffoldkey: scaffoldkey,),
              const SizedBox(
                height: defaultPadding,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          const MyFiles(),
                          const RecentFiles(),
                          if (Responsive.isMobile(context))
                            const SizedBox(
                              height: defaultPadding,
                            ),
                          if (Responsive.isMobile(context))
                            const StorageDetails(),
                        ],
                      )),
                  if (!Responsive.isMobile(context))
                    const SizedBox(
                      width: defaultPadding,
                    ),
                  if (!Responsive.isMobile(context))
                    const Expanded(flex: 2, child: StorageDetails())
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
