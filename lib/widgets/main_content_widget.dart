// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nubank_clone/colors/palette.dart';
import 'package:nubank_clone/model/carousel_items.dart';
import 'package:nubank_clone/widgets/sub-widget/carousel_items_widget.dart';

class MainContentWidget extends StatefulWidget {
  final bool canSee;
  const MainContentWidget({
    Key? key,
    required this.canSee,
  }) : super(key: key);

  @override
  State<MainContentWidget> createState() => _MainContentWidgetState();
}

class _MainContentWidgetState extends State<MainContentWidget> {
  @override
  Widget build(BuildContext context) {
    bool eyeOpen = widget.canSee;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        /*
          First section contains a Text and balance
        */
        children: [
          // Row with text and arrow to check account
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Conta',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 15,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //Accounts balance
          Text(
            eyeOpen == true ? 'R\$1.000,00' : '⚫⚫⚫⚫',
            style: eyeOpen == true
                ? TextStyle(fontWeight: FontWeight.w500, fontSize: 20)
                : TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          ),
          SizedBox(
            height: 30,
          ),

          // ListView containing all the carousel items
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final item in items) CarouselItem(item: item),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.all(15),
            height: 60,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Palette.nuButtons,
                borderRadius: BorderRadius.circular(15)),
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
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
