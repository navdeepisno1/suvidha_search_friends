import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidha_search_friend/constants/colors/app_colors.dart';
import 'package:suvidha_search_friend/constants/values/app_values.dart';
import 'package:suvidha_search_friend/constants/widgets/custom_text.dart';

class SayHelloScreen extends StatelessWidget {
  const SayHelloScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: kPadding),
              padding: EdgeInsets.symmetric(vertical: 48),
              decoration: BoxDecoration(
                color: kColorTertiary2.withOpacity(0.5),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: CustomText(
                            'It\'s',
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          margin: EdgeInsets.symmetric(horizontal: 24),
                          transform: Matrix4.rotationZ(0.05),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 10),
                          decoration: BoxDecoration(
                            color: kColorTertiary,
                          ),
                        ),
                        CustomText(
                          'Awesome !!',
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Hero(
                              tag: 'profilePic',
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 12),
                                height: MediaQuery.of(context).size.width / 3,
                                width: MediaQuery.of(context).size.width / 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://cdn.statically.io/img/indiapur.com/wp-content/uploads/2019/06/cool-whatsapp-dp-1.jpg?f=auto'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                alignment: Alignment.bottomCenter,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12),
                              height: MediaQuery.of(context).size.width / 3,
                              width: MediaQuery.of(context).size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://lh3.googleusercontent.com/-0tyULy_y7aI/V24sg2spRqI/AAAAAAAAalI/vsSaUFEpJGY/s640/Jensen-Ackles-dp-profile-pics-whatsapp-Facebook-278.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      CustomText(
                        'Say Hello and Ask for their Interests',
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: kColorSecondary.withOpacity(0.75),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kPadding),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: kColorTertiary,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: CustomText(
                      'Say \'Hello\'',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: kColorTertiary2,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: CustomText(
                        'Keep Swiping',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
