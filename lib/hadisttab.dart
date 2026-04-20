import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_indon/itemnamahadist.dart';
import 'package:quran_indon/l10n/app_localizations.dart';
import 'package:quran_indon/warnanyong.dart';

class HadistTab extends StatefulWidget {
  const HadistTab({super.key});

  @override
  State<HadistTab> createState() => _HadistTabState();
}

class _HadistTabState extends State<HadistTab> {
  List<Hadist> hadistlist = [];

  @override
  Widget build(BuildContext context) {
    if (hadistlist.isEmpty) {
      loadhadistfile();
    }
    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/quranlogo.png')),
        Divider(color: WarnaNyong.warnadasarterang, thickness: 3),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            AppLocalizations.of(context)!.hadist_bukhari,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Divider(color: WarnaNyong.warnadasarterang, thickness: 3),
        Expanded(
          flex: 2,
          child: hadistlist.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: WarnaNyong.warnadasarterang,
                  ),
                )
              : ListView.separated(
                  separatorBuilder: (context, index) {
                    return Divider(
                      color: WarnaNyong.warnadasarterang,
                      thickness: 1,
                    );
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ItemNamaHadist(hadist: hadistlist[index]),
                    );
                  },
                  itemCount: hadistlist.length,
                ),
        ),
      ],
    );
  }

  void loadhadistfile() async {
    String isihadist = await rootBundle.loadString('assets/files/hadist.txt');
    List<String> listhadist = isihadist.split('#\r\n');
    for (int i = 0; i < listhadist.length; i++) {
      List<String> linehadist = listhadist[i].split('\n');
      String title = linehadist[0];
      linehadist.removeAt(0);
      Hadist hadist = Hadist(title: title, content: linehadist);
      hadistlist.add(hadist);
      setState(() {});
    }
  }
}

class Hadist {
  String title;
  List<String> content;

  Hadist({required this.title, required this.content});
}
