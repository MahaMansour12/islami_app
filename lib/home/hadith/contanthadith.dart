import 'package:flutter/material.dart';
import 'package:islamii/home/hadith/hadith.dart';

class Contant_Hadith extends StatelessWidget {
  static const String routNme = 'Contat_hadith';

  @override
  Widget build(BuildContext context) {
    dataHadith ard = ModalRoute.of(context)?.settings.arguments as dataHadith;
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
                  Text(ard.title, style: Theme.of(context).textTheme.headline4),
            ),
            body: Card(
                color: Theme.of(context).cardColor,
                child: SingleChildScrollView(
                    child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(ard.contant),
                )),
                margin:
                    EdgeInsets.only(top: 80, bottom: 30, right: 20, left: 20),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ))));
  }
}
