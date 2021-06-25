import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';
import 'package:suvidha_search_friend/constants/widgets/custom_text.dart';

class ViewProfileScreen extends StatelessWidget {
  const ViewProfileScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: kPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.chevron_left_rounded,
                    color: kColorSecondary,
                    size: 32,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: kColorSecondary,
                    size: 32,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Hero(
            tag: 'profilePic',
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kPadding, vertical: 12),
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(
                      'https://cdn.statically.io/img/indiapur.com/wp-content/uploads/2019/06/cool-whatsapp-dp-1.jpg?f=auto'),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      'Natasya Siluna',
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                      child: Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.venus,
                            color: kColorSecondary,
                            size: 20,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          CustomText(
                            '21',
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          )
                        ],
                      ),
                    )
                  ],
                ),
                CustomText(
                  'Delhi,India',
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: kColorSecondary.withOpacity(0.75),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  'About',
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
                CustomText(
                  'I am Natasya ,looking for pure heart that will complete me and my life',
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: kColorSecondary.withOpacity(0.75),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kPadding,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  'Interests',
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
                Wrap(
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Chip(
                        label: CustomText(
                          'Singing',
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: kColorTertiary2,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
