import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran_indon/itemdetailsurat.dart';
import 'package:quran_indon/warnanyong.dart';

class DetailSuratScreen extends StatefulWidget {
  static const String routeName = 'detailsurat';

  const DetailSuratScreen({super.key});

  @override
  State<DetailSuratScreen> createState() => _DetailSuratScreenState();
}

class _DetailSuratScreenState extends State<DetailSuratScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuratDetailsArgs;
    if (verses.isEmpty) {
      loadfiles(args.index);
    }

    return Stack(
      children: [
        Image.asset(
          'assets/images/mainback.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              args.name,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: WarnaNyong.warnadasarterang,
                  ),
                )
              : ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemDetailSurat(
                      content: verses[index],
                      index: index,
                    );
                  },
                  itemCount: verses.length,
                ),
        ),
      ],
    );
  }

  void loadfiles(int index) async {
    String content = await rootBundle.loadString(
      'assets/files/${index + 1}.txt',
    );
    content.split('\n');
    List<String> lines = content.split('\n');

    verses = lines;
    setState(() {});
  }
}

class SuratDetailsArgs {
  String name;
  int index;

  SuratDetailsArgs({required this.name, required this.index});
}
