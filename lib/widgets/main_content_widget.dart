// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
            height: 10,
          ),
          Text(
            eyeOpen == true ? 'R\$1.000,00' : '⚫⚫⚫⚫',
            style: eyeOpen == true
                ? TextStyle(fontWeight: FontWeight.bold, fontSize: 20)
                : TextStyle(fontWeight: FontWeight.bold, fontSize: 10),
          )

          //Accounts balance
        ],
      ),
    );
  }
}
