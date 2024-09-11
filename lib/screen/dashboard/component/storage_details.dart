import 'package:dashboard/constants.dart';
import 'package:dashboard/models/my_files.dart';
import 'package:dashboard/screen/dashboard/component/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({super.key});

  @override
  Widget build(BuildContext context) {
    List storageFiles = [
      CloudStorageInfo(
          color: primaryColor,
          title: "Document Files",
          numOfFiles: 1328,
          svgSrc: "assets/icons/Documents.svg",
          totalStorage: "1.3GB"),
      CloudStorageInfo(
          color: const Color(0xFFFFA113),
          title: "Media Files",
          numOfFiles: 1328,
          svgSrc: "assets/icons/media.svg",
          totalStorage: "15.3GB"),
      CloudStorageInfo(
          color: const Color(0xFFA4CDFF),
          title: "Other Files",
          numOfFiles: 1328,
          svgSrc: "assets/icons/folder.svg",
          totalStorage: "1.3GB"),
      CloudStorageInfo(
          color: const Color(0xFF007EE5),
          title: "Unknown",
          numOfFiles: 140,
          svgSrc: "assets/icons/unknown.svg",
          totalStorage: "1.3GB"),
    ];
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(),
          Column(
            children: List.generate(
                storageFiles.length,
                (index) => Container(
                      // padding: EdgeInsets.all(defaultPadding),
                      margin: EdgeInsets.only(top: defaultPadding),
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: primaryColor.withOpacity(0.15), width: 2),
                          borderRadius: BorderRadius.circular(defaultPadding)),
                      child: ListTile(
                        leading: SvgPicture.asset(storageFiles[index].svgSrc),
                        title: Text(storageFiles[index].title.toString(),
                            style: Theme.of(context).textTheme.titleSmall),
                        subtitle: Text("${storageFiles[index].numOfFiles} File",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(fontSize: 13, color: Colors.white54)),
                        trailing: Text(
                            storageFiles[index].totalStorage.toString(),
                            style: Theme.of(context).textTheme.titleSmall),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
