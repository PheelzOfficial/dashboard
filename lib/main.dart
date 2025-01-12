import 'package:dashboard/constants.dart';
import 'package:dashboard/screen/main/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData.dark().copyWith(
       scaffoldBackgroundColor: bgColor,
       textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(bodyColor: Colors.white),
       canvasColor: secondaryColor
      ),
      home: MainScreen(),
    );
  }
}

