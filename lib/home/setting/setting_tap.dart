import 'package:flutter/material.dart';
import 'package:islamii/home/setting/setting_dget.dart';

class setting_tap extends StatefulWidget {
  @override
  State<setting_tap> createState() => _setting_tapState();
}

class _setting_tapState extends State<setting_tap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Theme', style: Theme.of(context).textTheme.headline6),
          InkWell(
            onTap: () {
              showmodelsheet();
            },
            child: Container(
              margin: EdgeInsets.all(10),
              //width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'dark',
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          Text('languge', style: Theme.of(context).textTheme.headline6),
          InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              //width: double.infinity,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Ar', style: Theme.of(context).textTheme.headline5),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showmodelsheet() {
    showModalBottomSheet(
        context: context,
        builder: (buildContext) {
          return SettingWidgt();
        });
  }
}
