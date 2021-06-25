import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';
import 'package:suvidha_search_friend/constants/widgets/custom_text.dart';

class CustomTopAppBar extends StatelessWidget {
  const CustomTopAppBar({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.menu_rounded,
                color: kColorSecondary,
                size: 28,
              ),
            ),
          ),
          Row(
            children: [
              Icon(
                Icons.location_on,
                color: kColorTertiary,
              ),
              SizedBox(
                width: 6,
              ),
              CustomText(
                'Delhi',
              ),
              CustomText(
                ', India',
                fontWeight: FontWeight.bold,
              ),
              SizedBox(
                width: 6,
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: kColorSecondary,
                size: 32,
              ),
            ],
          ),
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications_none_outlined,
                color: kColorSecondary,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
