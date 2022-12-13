import 'package:flutter/material.dart';

//import 'package:islamii/home/quran/Sura_widgt.dart';

import '../../Mythem.dart';

class Sura_detsils extends StatelessWidget {
  static const String routName = "Sura_details";

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg sura =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    return Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image:
              DecorationImage(image: AssetImage("asstes/imges/background.png")),
        ),
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:
                Text(sura.name, style: Mytheme.lighttheme.textTheme.headline2),
          ),
        ));
  }
}

class SuraDetailsArg {
  String name;
  int index;

  SuraDetailsArg({required this.name, required this.index});
}
