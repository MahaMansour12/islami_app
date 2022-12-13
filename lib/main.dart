import 'package:flutter/material.dart';
import 'package:islamii/Mythem.dart';
import 'package:islamii/home/home_screen.dart';

//import 'package:islamii/home/quran/quran_tap.dart';

import 'home/hadith/contanthadith.dart';
import 'home/quran/suradetails.dart';

void main() {
  runApp(islami_app());
}

class islami_app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        home_screen.routName: (_) => home_screen(),
        Sura_detsils.routName: (_) => Sura_detsils(),
        Contant_Hadith.routNme: (_) => Contant_Hadith()
      },
      initialRoute: home_screen.routName,
      theme: Mytheme.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }
}
