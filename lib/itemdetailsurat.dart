import 'package:flutter/material.dart';

class ItemDetailSurat extends StatelessWidget {
  String content;
  int index;

  ItemDetailSurat({super.key, required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
