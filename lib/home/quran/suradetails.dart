import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamii/home/quran/sura_contant.dart';

class Sura_detsils extends StatefulWidget {
  static const String routName = "Sura_details";

  @override
  State<Sura_detsils> createState() => _Sura_detsilsState();
}

class _Sura_detsilsState extends State<Sura_detsils> {
  List<String> lines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArg sura =
        ModalRoute.of(context)?.settings.arguments as SuraDetailsArg;
    if (lines.isEmpty) {
      loadFiles(sura.index);
    }
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
                  Text(sura.name, style: Theme.of(context).textTheme.headline6),
            ),
            body: Card(
              margin: EdgeInsets.only(top: 80, bottom: 30, right: 20, left: 20),
              elevation: 0,
              color: Theme.of(context).cardColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40)),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return sura_contant(
                      versesContant: lines[index],
                      numberVerses: index + 1,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Divider(
                        height: 2,
                        color: Theme.of(context).primaryColor,
                        thickness: 1,
                      ),
                    );
                  },
                  itemCount: lines.length),
            )));
  }

  void loadFiles(int fileIndex) async {
    String contnt =
        await rootBundle.loadString("asstes/files/${fileIndex + 1}.txt");
    List<String> line = contnt.trim().split("\n");
    setState(() {
      lines = line;
    });
  }
}

class SuraDetailsArg {
  String name;
  int index;

  SuraDetailsArg({required this.name, required this.index});
}
