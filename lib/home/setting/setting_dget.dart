import 'package:flutter/material.dart';

class SettingWidgt extends StatefulWidget {
  const SettingWidgt({Key? key}) : super(key: key);

  @override
  State<SettingWidgt> createState() => _SettingWidgtState();
}

class _SettingWidgtState extends State<SettingWidgt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          getSelected("Light"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UngetSelected('Dark'),
            ],
          )
        ],
      ),
    );
  }

  Widget getSelected(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        Icon(
          Icons.check,
          color: Theme.of(context).primaryColor,
        ),
      ],
    );
  }

  Widget UngetSelected(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
      ],
    );
  }
}
