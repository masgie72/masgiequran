import 'package:flutter/material.dart';
import 'package:quran_indon/detailhadistscreen.dart';
import 'package:quran_indon/hadisttab.dart';

class ItemNamaHadist extends StatelessWidget {
  Hadist hadist;

  ItemNamaHadist({super.key, required this.hadist});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(
          context,
        ).pushNamed(DetailHadistScreen.routeName, arguments: hadist);
      },
      child: Text(
        hadist.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
