import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'hadeth_name_item.dart';

class AhadethScreen extends StatefulWidget {
  @override
  State<AhadethScreen> createState() => _AhadethScreenState();
}

class _AhadethScreenState extends State<AhadethScreen> {
  List<HadethModel> allAhadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allAhadeth.isEmpty) {
      loadHadethFile();
    }

    return Column(
      children: [
        Image.asset('assets/images/ahadeth_header_bg.png'),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.ahadeth,
          style: Theme.of(context).textTheme.headline1,
        ),
        Divider(
          color: Theme.of(context).primaryColor,
          thickness: 3,
        ),
        Expanded(
          child: allAhadeth.isEmpty
              ? Center(child: CircularProgressIndicator())
              : ListView.separated(
                  itemBuilder: (c, index) {
                    return HadethNameItem(
                        allAhadeth[index].title, allAhadeth[index]);
                  },
                  separatorBuilder: (_, index) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      color: Theme.of(context).primaryColor,
                      height: 1,
                    );
                  },
                  itemCount: allAhadeth.length),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String content = await rootBundle.loadString('assets/files/ahadeth.txt');

    List<String> ahadeth = content.trim().split('#\r\n');

    for (int i = 0; i < ahadeth.length; i++) {
      String AllHadethContent = ahadeth[i];
      print(AllHadethContent);
      List<String> lines = AllHadethContent.split('\n');
      String title = lines[0];
      lines.removeAt(0);
      HadethModel hadethModel = HadethModel(title, lines);
      allAhadeth.add(hadethModel);
    }
    setState(() {});
  }
}

class HadethModel {
  String title;
  List<String> content;

  HadethModel(this.title, this.content);
}
