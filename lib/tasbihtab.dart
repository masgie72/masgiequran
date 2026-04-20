import 'package:flutter/material.dart';
import 'package:quran_indon/l10n/app_localizations.dart';

class TasbihTab extends StatefulWidget {
  @override
  State<TasbihTab> createState() => _TasbihTabState();
}

class _TasbihTabState extends State<TasbihTab> {
  int tasbihcounter = 0;
  int index = 0;
  double angle = 0;

  List<String> tasbih = [
    'أَسْتَغْفِرُ اللهَ الْعَظِـيْم',
    ' سُبْحَانَ اللهِ',
    ' الْحَمْدُلِلهِ',
    'اَللهُ اَكْبَرْ',
  ];

  onTap() {
    tasbihcounter++;
    angle += 3;
    if (tasbihcounter == 33) {
      tasbihcounter = 0;
      index++;
    }
    if (index == tasbih.length) {
      index = 0;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(height: 50),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 45),
                child: Image.asset('assets/images/tasbihhead.png'),
              ),
              GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .040,
                    bottom: 26,
                  ),
                  child: Transform.rotate(
                    angle: angle,
                    child: Image.asset('assets/images/tasbihbody.png'),
                  ),
                ),
              ),
            ],
          ),
          Text(
            AppLocalizations.of(context)!.tasbih,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '$tasbihcounter',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            ),
          ),

          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              tasbih[index],
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
