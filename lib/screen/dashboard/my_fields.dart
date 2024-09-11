import 'package:dashboard/constants.dart';
import 'package:dashboard/models/my_files.dart';
// import 'package:models/my_files.dart';
import 'package:dashboard/screen/dashboard/component/file_info_card.dart';
import 'package:dashboard/screen/main/responsive.dart';
import 'package:flutter/material.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({super.key});

  @override
  Widget build(BuildContext context) {
      List demoFiles = [
    CloudStorageInfo(color: primaryColor, title: "Document", numOfFiles: 1328, svgSrc: "assets/icons/Documents.svg", percentage: 35, totalStorage: "1.9GB"),
    CloudStorageInfo(color: const Color(0xFFFFA113), title: "Google Drive", numOfFiles: 1328, svgSrc: "assets/icons/google_drive.svg", percentage: 35, totalStorage: "2.9GB"),
    CloudStorageInfo(color: const Color(0xFFA4CDFF), title: "One Drive", numOfFiles: 1328, svgSrc: "assets/icons/one_drive.svg", percentage: 35, totalStorage: "1GB"),
    CloudStorageInfo(color: const Color(0xFF007EE5), title: "Document", numOfFiles: 5328, svgSrc: "assets/icons/Documents.svg", percentage: 78, totalStorage: "7.3GB"),
  ];
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("My Files", style: Theme.of(context).textTheme.titleMedium),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: const EdgeInsetsDirectional.symmetric(
                      horizontal: defaultPadding * 1.5,
                      vertical: defaultPadding)),
              onPressed: () {},
              label: const Text("Add New"),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        const  SizedBox(height: defaultPadding),
        GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demoFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isMobile(context)? 2: 4,
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: 1
            ),
          itemBuilder: (context, index)=> FileInfoCard(info: demoFiles[index],))

      ],
    );
  }
}
