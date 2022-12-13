import 'package:flutter/material.dart';
import 'package:islamii/home/hadith/hadith.dart';

import 'contanthadith.dart';

class hadithWidgt extends StatelessWidget {
  String Contant;
  String title;

  hadithWidgt({required this.title, required this.Contant});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, Contant_Hadith.routNme,
              arguments: dataHadith(title: title, contant: Contant));
        },
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6,
          textAlign: TextAlign.center,
        ));
  }
}
