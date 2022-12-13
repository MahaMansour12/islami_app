import 'package:flutter/material.dart';
import 'package:islamii/Mythem.dart';
import 'package:islamii/home/hadith/hadith.dart';
import 'package:islamii/home/quran/quran_tap.dart';
import 'package:islamii/home/radio/radio.dart';
import 'package:islamii/home/sebha/sebha.dart';

class home_screen extends StatefulWidget {
  static const String routName = "home_screen";

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  int selextindex = 0;

  @override
  Widget build(BuildContext context) {
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
                  Text('Islami', style: Mytheme.lighttheme.textTheme.headline2),
            ),
            body: Taps[selextindex],
            bottomNavigationBar: Theme(
              data: Theme.of(context).copyWith(canvasColor: Mytheme.primeLigth),
              child: InkWell(
                child: BottomNavigationBar(
                  currentIndex: selextindex,
                  onTap: (index) {
                    setState(() {
                      selextindex = index;
                    });
                  },
                  items: [
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage(
                          'asstes/imges/quran.png',
                        ),
                      ),
                      label: "Quran",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/hadith.png'),
                      ),
                      label: "Hadith",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/sebha.png'),
                      ),
                      label: "Tasbeh",
                    ),
                    BottomNavigationBarItem(
                      icon: ImageIcon(
                        AssetImage('asstes/imges/radio.png'),
                      ),
                      label: "Radio",
                    )
                  ],
                ),
              ),
            )));
  }

  List<Widget> Taps = [
    quran_Tap(),
    hadith_Tap(),
    sebha_Tap(),
    raduo_Tap(),
  ];
}
