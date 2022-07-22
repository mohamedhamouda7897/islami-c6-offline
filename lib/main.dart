import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_c6_offline/home_layout.dart';
import 'package:islami_c6_offline/my_themes.dart';
import 'package:islami_c6_offline/providers/app_provider.dart';
import 'package:islami_c6_offline/sura_details/sura_details.dart';
import 'package:islami_c6_offline/tabs/ahadeth/hadeth_details.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English, no country code
        Locale('ar'), // Spanish, no country code
      ],
      locale: Locale(provider.AppLanguage),
      initialRoute: HomeLayout.routeName,
      routes: {
        HomeLayout.routeName: (c) => HomeLayout(),
        SuraDetails.routeName: (c) => SuraDetails(),
        HadethDetails.routeName: (c) => HadethDetails(),
      },
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }
}
