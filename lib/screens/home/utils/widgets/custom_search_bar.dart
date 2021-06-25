import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kPadding),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: kColorTertiary2,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color: kColorTertiary,
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Find Partner..',
                hintStyle: TextStyle(
                  color: kColorSecondary.withOpacity(0.75),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: kColorTertiary,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Icon(
              Icons.filter_list_outlined,
              color: kColorPrimary,
            ),
          )
        ],
      ),
    );
  }
}
