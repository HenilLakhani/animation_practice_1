import 'package:animation_practice_1/view/Screens/All_Detail_Page.dart';
import 'package:flutter/material.dart';

import 'view/Screens/Detail_Page.dart';
import 'view/Screens/home_page.dart';
import 'view/Screens/slpesh_Screen.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      routes: {
        'Home_Page': (context) => const HomePage(),
        'Detail_Page': (context) => const DetailPage(),
        'All_Detail_Page': (context) => const All_Detail_page(),
        '/': (context) => const Splash(),
      },
    );
  }
}
