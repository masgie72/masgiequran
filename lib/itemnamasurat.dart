import 'package:flutter/material.dart';
import 'package:quran_indon/detailsuratscreen.dart';

class ItemNamaSurat extends StatelessWidget {
  String name;
  int index;

  ItemNamaSurat({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          DetailSuratScreen.routeName,
          arguments: SuratDetailsArgs(name: name, index: index),
        );
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
