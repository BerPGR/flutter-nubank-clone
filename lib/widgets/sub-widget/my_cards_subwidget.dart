import 'package:flutter/material.dart';
import 'package:nubank_clone/colors/palette.dart';

class MyCardsSubWidget extends StatelessWidget {
  const MyCardsSubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Palette.nuButtons, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Badge(
            backgroundColor: Palette.nuPurple,
            child: Icon(
              Icons.credit_card_rounded,
              size: 25,
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            'Meus cartões',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          ),
        ],
      ),
    );
  }
}
