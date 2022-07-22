import 'package:flutter/material.dart';
import 'package:islami_c6_offline/tabs/ahadeth/ahadeth.dart';

import 'hadeth_details_item.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = 'hadethdetails';

  @override
  Widget build(BuildContext context) {
    HadethModel model =
        ModalRoute.of(context)!.settings.arguments as HadethModel;
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              '${model.title}',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          body: ListView.separated(
              itemBuilder: (c, index) {
                return HadethDetailsItem(model.content[index].toString());
              },
              separatorBuilder: (_, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 50),
                  color: Theme.of(context).primaryColor,
                  height: 1,
                );
              },
              itemCount: model.content.length),
        ),
      ],
    );
  }
}
