import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nubank_clone/colors/palette.dart';

import 'package:nubank_clone/model/bottom_carousel_items.dart';

class CarouselSubWidget extends StatefulWidget {
  final BottomCarousel item;
  const CarouselSubWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<CarouselSubWidget> createState() => _CarouselSubWidgetState();
}

class _CarouselSubWidgetState extends State<CarouselSubWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
      height: 325,
      width: (MediaQuery.of(context).size.width * 0.75),
      decoration: BoxDecoration(
          color: Palette.nuButtons, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Image.asset(
            widget.item.imagePath,
            height: 150,
            fit: BoxFit.fitWidth,
            width: MediaQuery.of(context).size.width,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 25, 25, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.item.title,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.item.text,
                  style: TextStyle(
                      color: Colors.grey[700],
                      height: 1.4,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 45,
                  width: (MediaQuery.of(context).size.width * 0.32),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Palette.nuPurple),
                  child: Center(
                    child: Text(
                      'Conhecer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
