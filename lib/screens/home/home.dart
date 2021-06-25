import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';
import 'package:suvidha_search_friend/constants/widgets/bottom_app_bar.dart';
import 'package:suvidha_search_friend/constants/widgets/custom_text.dart';
import 'package:suvidha_search_friend/screens/home/utils/widgets/custom_post_container.dart';
import 'package:suvidha_search_friend/screens/home/utils/widgets/custom_search_bar.dart';
import 'package:suvidha_search_friend/screens/home/utils/widgets/custom_top_app_bar.dart';
import 'package:suvidha_search_friend/screens/home/utils/widgets/nearby_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomTopAppBar(),
            SizedBox(
              height: 12,
            ),
            CustomSearchBar(),
            SizedBox(
              height: 24,
            ),
            NearByList(),
            SizedBox(
              height: 12,
            ),
            Expanded(child: CustomPostContainer()),
            CustomBottomAppBar(),
          ],
        ),
      ),
    );
  }
}
