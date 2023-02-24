// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:nubank_clone/colors/palette.dart';

class SuggestionsCarouselSubWidget extends StatelessWidget {
  final String containerText;
  const SuggestionsCarouselSubWidget({
    Key? key,
    required this.containerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 15, 40, 20),
        height: 85,
        width: (MediaQuery.of(context).size.width * 0.7),
        decoration: BoxDecoration(
            color: Palette.nuButtons, borderRadius: BorderRadius.circular(15)),
        child: Text(
          this.containerText,
          style: TextStyle(fontSize: 14, height: 1.5),
        ),
      ),
    );
  }
}
