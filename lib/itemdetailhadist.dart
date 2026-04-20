import 'package:flutter/material.dart';

class ItemDetailHadist extends StatefulWidget {
  String content;

  ItemDetailHadist({super.key, required this.content});

  @override
  State<ItemDetailHadist> createState() => _ItemDetailHadistState();
}

class _ItemDetailHadistState extends State<ItemDetailHadist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        widget.content,
        textDirection: TextDirection.ltr,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }
}
