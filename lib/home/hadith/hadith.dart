import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadithwidgt.dart';

class hadith_Tap extends StatefulWidget {
  @override
  State<hadith_Tap> createState() => _hadith_TapState();
}

class _hadith_TapState extends State<hadith_Tap> {
  List<dataHadith> data = [];

  @override
  Widget build(BuildContext context) {
    if (data.isEmpty) {
      loadhadith();
    }
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              flex: 2,
              child: Image(image: AssetImage('asstes/imges/logo_hadith.png'))),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            'Ahadith',
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 4,
          ),
          Divider(
            height: 2,
            color: Theme.of(context).primaryColor,
            thickness: 2,
          ),
          Expanded(
            flex: 4,
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return hadithWidgt(
                    title: data[index].title,
                    Contant: data[index].contant,
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Divider(
                      height: 2,
                      color: Theme.of(context).primaryColor,
                      thickness: 1,
                    ),
                  );
                },
                itemCount: data.length),
          ),
        ],
      ),
    );
  }

  void loadhadith() async {
    List<dataHadith> ContantOfHadith = [];
    String hadith = await rootBundle.loadString("asstes/files/ahadeth .txt");
    List<String> hadithContant = hadith.trim().split("#");
    for (int i = 0; i < hadithContant.length; i++) {
      List<String> singlrHadith = hadithContant[i].trim().split("\n");
      String title = singlrHadith[0];
      hadithContant.removeAt(0);
      String Contant = hadithContant.join("\n ");
      dataHadith hadithData = dataHadith(title: title, contant: Contant);
      ContantOfHadith.add(hadithData);
    }

    setState(() {
      data = ContantOfHadith;
    });
  }
}

class dataHadith {
  String title;
  String contant;

  dataHadith({required this.title, required this.contant});
}
