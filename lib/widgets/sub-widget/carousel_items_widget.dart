// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nubank_clone/colors/palette.dart';

import 'package:nubank_clone/model/carousel_items.dart';

class CarouselItem extends StatelessWidget {
  final Item item;
  const CarouselItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(35),
                color: Palette.nuButtons),
            child: Center(
                child: Image.asset(
              item.iconPath,
              height: 25,
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${item.type}',
            style: TextStyle(
                overflow: TextOverflow.ellipsis, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
