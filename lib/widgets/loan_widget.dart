import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoanWidget extends StatelessWidget {
  const LoanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Empréstimo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Icon(
                Icons.arrow_forward_ios,
                size: 16,
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Crie um aviso para saber quando um empréstimo ficar disponivel.',
            style: TextStyle(
                height: 1.2,
                color: Colors.grey[700],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
