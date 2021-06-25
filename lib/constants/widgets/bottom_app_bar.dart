import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kColorTertiary2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: Icon(
              Icons.home_rounded,
              color: kColorTertiary,
              size: 28,
            ),
            padding: EdgeInsets.all(12.0),
          ),
          Container(
            child: Icon(
              Icons.chat_outlined,
              color: kColorSecondary.withOpacity(0.75),
              size: 28,
            ),
            padding: EdgeInsets.all(12.0),
          ),
          Container(
            child: Icon(
              Icons.favorite_border_rounded,
              color: kColorSecondary.withOpacity(0.75),
              size: 28,
            ),
            padding: EdgeInsets.all(12.0),
          ),
          Container(
            child: Icon(
              Icons.widgets_outlined,
              color: kColorSecondary.withOpacity(0.75),
              size: 28,
            ),
            padding: EdgeInsets.all(12.0),
          ),
        ],
      ),
    );
  }
}
