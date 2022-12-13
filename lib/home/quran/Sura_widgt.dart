import 'package:flutter/material.dart';
import 'package:islamii/Mythem.dart';
import 'package:islamii/home/quran/suradetails.dart';

class sura_Name_widgt extends StatelessWidget {
  String title;
  int suraIndex;

  sura_Name_widgt({required this.title, required this.suraIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, Sura_detsils.routName,
              arguments: SuraDetailsArg(name: title, index: suraIndex));
        },
        child: Text(
          title,
          style: TextStyle(
            color: Mytheme.blackColor,
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
