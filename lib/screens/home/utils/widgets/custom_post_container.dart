import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';
import 'package:suvidha_search_friend/constants/widgets/custom_text.dart';
import 'package:suvidha_search_friend/screens/say_hello/say_hello.dart';
import 'package:suvidha_search_friend/screens/view_profile/view_profile.dart';

class CustomPostContainer extends StatelessWidget {
  const CustomPostContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemBuilder: (context, index) => ProfilePicWithBioContainer(),
              itemCount: 10,
            ),
          ),
          ReactionButtonsContainer(),
        ],
      ),
    );
  }
}

class ProfilePicWithBioContainer extends StatelessWidget {
  const ProfilePicWithBioContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ViewProfileScreen()));
      },
      child: Stack(
        children: [
          Hero(
            tag: 'profilePic',
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: kPadding, vertical: 12),
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
          Positioned(
            child: Container(
              height: 150,
              margin: EdgeInsets.symmetric(
                horizontal: kPadding,
                vertical: 12,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 26,
              ),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(1)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
            bottom: 0,
            left: 0,
            right: 0,
          )
        ],
      ),
    );
  }
}

class ReactionButtonsContainer extends StatelessWidget {
  const ReactionButtonsContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Icon(
              Icons.close,
              color: Colors.pink,
              size: 24,
            ),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kColorTertiary2,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SayHelloScreen()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Icon(
                Icons.favorite,
                color: Colors.white,
                size: 32,
              ),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: kColorTertiary,
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Icon(
              Icons.star,
              color: Colors.white,
              size: 24,
            ),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: kColorTertiary2,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
