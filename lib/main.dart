import 'package:flutter/material.dart';
import 'package:islami_c6_offline/home_layout.dart';
import 'package:islami_c6_offline/my_themes.dart';
import 'package:islami_c6_offline/sura_details/sura_details.dart';
import 'package:islami_c6_offline/tabs/ahadeth/hadeth_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (c) => HomeLayout(),
        SuraDetails.routeName: (c) => SuraDetails(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
    );
  }
}
