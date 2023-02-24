import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nubank_clone/colors/palette.dart';

class ButtonsRowSubwidget extends StatelessWidget {
  const ButtonsRowSubwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 46,
          width: (MediaQuery.of(context).size.width * 0.36),
          decoration: BoxDecoration(
            color: Color(0xFFD01C1B),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              'Pagar fatura',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 46,
          width: (MediaQuery.of(context).size.width * 0.27),
          decoration: BoxDecoration(
            color: Palette.nuButtons,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Center(
            child: Text(
              'Parcelar',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
