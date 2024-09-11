import 'package:dashboard/constants.dart';
import 'package:dashboard/screen/main/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.scaffoldkey});
  final GlobalKey<ScaffoldState> scaffoldkey;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
        IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){
             scaffoldkey.currentState!.openDrawer();
          },
        ),
        if(!Responsive.isMobile(context))
        Text("Dashboard", style: Theme.of(context).textTheme.titleLarge),
        if(!Responsive.isMobile(context))
        Spacer(
          flex: Responsive.isDesktop(context)? 2 : 1,
        ),
        Expanded(
            child: TextField(
          decoration: InputDecoration(
              hintText: "Search",
              fillColor: secondaryColor,
              filled: true,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10)),
              suffixIcon: Container(
                padding: const EdgeInsets.all(defaultPadding),
                margin: const EdgeInsets.all(
                  defaultPadding / 2,
                ),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: SvgPicture.asset("assets/icons/Search.svg"),
              )),
        )),
        Container(
          padding: const EdgeInsets.symmetric(
              horizontal: defaultPadding, vertical: defaultPadding / 2),
          margin: const EdgeInsets.only(left: defaultPadding),
          decoration: BoxDecoration(
              color: secondaryColor,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              Image.asset(
                "assets/images/profile_pic.png",
                height: 38,
              ),
              if (!Responsive.isMobile(context))
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Text("angelina Jolie"),
                ),
              Icon(Icons.keyboard_arrow_down)
            ],
          ),
        )
      ],
    );
  }
}
