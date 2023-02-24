import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:nubank_clone/model/bottom_carousel_items.dart';
import 'package:nubank_clone/widgets/sub-widget/bottom_carousel_subwidget.dart';

class MoreWidget extends StatelessWidget {
  const MoreWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Descubra mais',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final item in items)
                  CarouselSubWidget(
                    item: item,
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}
