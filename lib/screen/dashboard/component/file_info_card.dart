import 'package:dashboard/constants.dart';
import 'package:dashboard/models/my_files.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({super.key, required this.info});

  final CloudStorageInfo info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(defaultPadding * 0.75),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: info.color!.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset(
                  info.svgSrc!,
                  // height: 30,
                  // width: 30,
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(info.color!, BlendMode.srcIn),
                ),
              ),
              const Icon(
                Icons.more_vert,
                color: Colors.white,
              )
            ],
          ),
          Text(
            info.title!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 5,
                decoration: BoxDecoration(
                    color: info.color!.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10)),
              ),
              LayoutBuilder(builder: (context, constraints) =>  Container(
                height: 5,
                width: constraints.maxWidth * (info.percentage! / 100),
                decoration: BoxDecoration(
                  color: info.color!,
                  borderRadius: BorderRadius.circular(10),
                ),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${info.numOfFiles!} Files", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white),),
              Text("${info.totalStorage}", style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.white))
            ],
          )
        ],
      ),
    );
  }
}
