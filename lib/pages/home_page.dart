import 'package:flutter/material.dart';
import '../colors/palette.dart';
import '../widgets/top_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool canSee = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          height: 25,
          color: Palette.nuPurple,
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                TopSectionWidget(eyeOpened: canSee),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
