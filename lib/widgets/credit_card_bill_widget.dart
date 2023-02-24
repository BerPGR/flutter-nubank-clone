// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nubank_clone/colors/palette.dart';
import 'package:nubank_clone/widgets/sub-widget/pay_bill_subwidget.dart';

class CreditCardWidget extends StatefulWidget {
  final bool eyeOpen;
  const CreditCardWidget({
    Key? key,
    required this.eyeOpen,
  }) : super(key: key);

  @override
  State<CreditCardWidget> createState() => _CreditCardWidgetState();
}

class _CreditCardWidgetState extends State<CreditCardWidget> {
  @override
  Widget build(BuildContext context) {
    bool eyeOpen = widget.eyeOpen;
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 25, 25, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cartão de crédito',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Fatura fechada',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600]),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            eyeOpen == true ? 'R\$120,00' : '⚫⚫⚫⚫',
            style: eyeOpen == true
                ? TextStyle(fontWeight: FontWeight.w500, fontSize: 20)
                : TextStyle(
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold,
                    fontSize: 8,
                    color: Colors.black),
          ),
          SizedBox(
            height: 14,
          ),
          Text(
            'Vencimento dia 02',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.grey[600]),
          ),
          SizedBox(
            height: 30,
          ),
          ButtonsRowSubwidget()
        ],
      ),
    );
  }
}
