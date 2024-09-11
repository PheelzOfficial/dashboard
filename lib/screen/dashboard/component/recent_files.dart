import 'package:dashboard/constants.dart';
import 'package:dashboard/models/recent_files.dart';
import 'package:dashboard/screen/main/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    List demoRecentFiles = [
      RecentFile(
          icon: "assets/icons/xd_file.svg",
          title: "XD File",
          date: "01-03-2021",
          size: "3.5mb"),
      RecentFile(
          icon: "assets/icons/Figma_file.svg",
          title: "Figma File",
          date: "27-02-2021",
          size: "19.0mb"),
      RecentFile(
          icon: "assets/icons/Documents.svg",
          title: "Document",
          date: "23-02-2021",
          size: "32.5mb"),
      RecentFile(
          icon: "assets/icons/sound_file.svg",
          title: "Sound File",
          date: "21-02-2021",
          size: "3.5mb"),
      RecentFile(
          icon: "assets/icons/media_file.svg",
          title: "Media File",
          date: "23-02-2021",
          size: "2.5mb"),
      RecentFile(
          icon: "assets/icons/pdf_file.svg",
          title: "Sales File",
          date: "25-02-2021",
          size: "3.5mb"),
      RecentFile(
          icon: "assets/icons/excel_file.svg",
          title: "Excel File",
          date: "25-02-2021",
          size: "34.5mb"),
    ];
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      margin: const EdgeInsets.only(top: defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent Files",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
                columnSpacing: defaultPadding,
                columns: const [
                  DataColumn(
                    label: Text("File Name"),
                  ),
                  DataColumn(
                    label: Text("Date"),
                  ),
                  DataColumn(
                    label: Text("Size"),
                  ),
                ],
                rows: List.generate(demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index], context))),
          )
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileinfo, BuildContext context) {
  return DataRow(cells: [
    DataCell(Row(
      children: [
        SvgPicture.asset(
          fileinfo.icon!,
          height: Responsive.isMobile(context) ? 20 : 30,
          width: Responsive.isMobile(context) ? 20 : 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(fileinfo.title!, style: TextStyle(fontSize: Responsive.isMobile(context) ? 13 : 16)),
        )
      ],
    )),
    DataCell(Text(fileinfo.date!, style: TextStyle(fontSize: Responsive.isMobile(context) ? 13 : 16),)),
    DataCell(Text(fileinfo.size!, style: TextStyle(fontSize: Responsive.isMobile(context) ? 13 : 16))),
  ]);
}
