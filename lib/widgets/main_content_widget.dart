// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nubank_clone/colors/palette.dart';
import 'package:nubank_clone/model/carousel_items.dart';
import 'package:nubank_clone/widgets/sub-widget/carousel_items_widget.dart';
import 'package:nubank_clone/widgets/sub-widget/my_cards_subwidget.dart';
import 'package:nubank_clone/widgets/sub-widget/sugestions_carousel_widget.dart';

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
      padding: const EdgeInsets.fromLTRB(25, 30, 25, 15),
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
                : TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 8,
                    letterSpacing: 2,
                    color: Colors.black),
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
          MyCardsSubWidget(),
          SizedBox(
            height: 25,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SuggestionsCarouselSubWidget(
                  containerText:
                      'Ative o Modo Rua e proteja mais a sua conta.'),
              SuggestionsCarouselSubWidget(
                  containerText:
                      'Concorra a prêmios com o Nubank Vida a partir de R\$4/...'),
              SuggestionsCarouselSubWidget(
                  containerText:
                      'Convide amigos para o Nubank e desbloquiei brasões incríveis.'),
            ]),
          )
        ],
      ),
    );
  }
}
