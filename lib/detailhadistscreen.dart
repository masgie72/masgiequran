import 'package:flutter/material.dart';
import 'package:quran_indon/hadisttab.dart';
import 'package:quran_indon/itemdetailhadist.dart';

class DetailHadistScreen extends StatefulWidget {
  static const String routeName = 'detailhadist';

  const DetailHadistScreen({super.key});

  @override
  State<DetailHadistScreen> createState() => _DetailHadistScreenState();
}

class _DetailHadistScreenState extends State<DetailHadistScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadist;

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
              args.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ItemDetailHadist(content: args.content[index]);
            },
            itemCount: args.content.length,
          ),
        ),
      ],
    );
  }
}
