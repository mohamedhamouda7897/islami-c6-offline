import 'package:flutter/material.dart';
import 'package:islami_c6_offline/providers/app_provider.dart';
import 'package:islami_c6_offline/settings/show_language_bottom_sheet.dart';
import 'package:islami_c6_offline/settings/show_theme_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({Key? key}) : super(key: key);

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Language',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(
                pro.AppLanguage == 'en' ? "English" : "العربية",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Theme',
            style: Theme.of(context).textTheme.headline2,
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Text(
                pro.themeMode == ThemeMode.light ? "Light" : "Dark",
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
          )
        ],
      ),
    );
  }

  // String languageText(Provider p){
  //   p.
  // }

  void showThemeBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowThemeBottomsheet();
        });
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return ShowLangiageBottomsheet();
        });
  }
}
