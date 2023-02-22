import 'package:flutter/material.dart';

class MainContentWidget extends StatefulWidget {
  const MainContentWidget({super.key});

  @override
  State<MainContentWidget> createState() => _MainContentWidgetState();
}

class _MainContentWidgetState extends State<MainContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        /*
          First section contains a Text and balance
        */
        children: [
          // Text with account
          Text("Conta"),

          //Accounts balance
        ],
      ),
    );
  }
}
