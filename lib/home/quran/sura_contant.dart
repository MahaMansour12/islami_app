import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/Mythem.dart';

class sura_contant extends StatelessWidget {
  String versesContant;
  int numberVerses;

  sura_contant({required this.versesContant, required this.numberVerses});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
      child: Text(
        "$versesContant ($numberVerses)",
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: TextStyle(color: Mytheme.blackColor, fontSize: 20),
      ),
    );
  }
}
