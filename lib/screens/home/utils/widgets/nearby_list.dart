import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';

class NearByList extends StatelessWidget {
  const NearByList({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: kPadding),
      height: MediaQuery.of(context).size.width * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(
            right: 24,
          ),
          height: MediaQuery.of(context).size.width * 0.15,
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: kColorTertiary,
            image: DecorationImage(
              image: NetworkImage(
                  'https://s.yimg.com/ny/api/res/1.2/k8ubznEM0r6qZuaa2lLWjA--/YXBwaWQ9aGlnaGxhbmRlcjt3PTk2MA--/https://s.yimg.com/cd/resizer/2.0/original/-7Dp-ACTG_00qeV4qhn5peiqARs'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
    );
  }
}
