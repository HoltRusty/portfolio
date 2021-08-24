import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'package:my_portfolio/widgets/widgets.dart';
import 'package:my_portfolio/constants.dart';

class MyMissionMonetize extends StatefulWidget {
  const MyMissionMonetize({Key? key}) : super(key: key);

  @override
  _MyMissionMonetizeState createState() => _MyMissionMonetizeState();
}

class _MyMissionMonetizeState extends State<MyMissionMonetize> {
  late ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {});
      });
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    var scaffoldKey = GlobalKey<ScaffoldState>();
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      endDrawer: MobileDrawer(
        isHome: true,
      ),
      key: scaffoldKey,
      appBar: Responsive.isMobile(context)
          ? AppBar(
              backgroundColor: Color.fromRGBO(40, 40, 40, 1),
              title: Text(
                'Holt Russell',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () => scaffoldKey.currentState!.openEndDrawer(),
                  icon: Icon(Icons.menu_rounded),
                  color: Colors.white,
                ),
              ],
            )
          : PreferredSize(
              preferredSize: Size(width, 50.0),
              child: CustomAppBar(
                isHome: false,
              ),
            ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 550,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'My Mission: Monetize',
                    style: megaTitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: width > 650 ? 550 : 3 * width / 4 + 40,
                    child: Text(
                      'How I helped Mark Yuzuik monetize his audience through creative sales strategies',
                      style: subtitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Responsive.isDesktop(context)
                ? Container(
                    padding: EdgeInsets.symmetric(vertical: 65.0),
                    color: Colors.white12,
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Here\'s the problem',
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'How do you help a professional that has',
                          style: subtitleTextStyle,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  Icon(
                                    Icons.not_interested,
                                    size: 55.0,
                                    color: Color.fromRGBO(40, 216, 255, 1),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'No Strategy',
                                    style: emphasizedTextStyle,
                                  ),
                                  Text(
                                    'Mark wanted to make the\ntransition to a digital business,\nbut had no idea how.',
                                    style: miniText,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: width / 8,
                              // ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.not_interested,
                                    size: 55.0,
                                    color: Color.fromRGBO(40, 216, 255, 1),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'No Direction',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'He needed the tools to translate\nhis 20+ years of expertise into\ndigital credibility.',
                                    style: miniText,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                              // SizedBox(
                              //   width: width / 8,
                              // ),
                              Column(
                                children: [
                                  Icon(
                                    Icons.not_interested,
                                    size: 55.0,
                                    color: Color.fromRGBO(40, 216, 255, 1),
                                  ),
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'No Insights',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'He wanted to sell products, but\ndidn\’t have any audience\ninsights to use.',
                                    style: miniText,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                : Container(
                    padding: EdgeInsets.symmetric(vertical: 65.0),
                    color: Colors.white12,
                    height: 900.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Here\'s the problem',
                          style: titleTextStyle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          width: width > 600 ? 500 : 3 * width / 4,
                          child: Text(
                            'How do you help a professional that has',
                            style: subtitleTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 45.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.not_interested,
                              size: 55.0,
                              color: Color.fromRGBO(40, 216, 255, 1),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'No Strategy',
                              style: emphasizedTextStyle,
                            ),
                            Text(
                              'Mark wanted to make the\ntransition to a digital business,\nbut had no idea how.',
                              style: miniText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 37.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.not_interested,
                              size: 55.0,
                              color: Color.fromRGBO(40, 216, 255, 1),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'No Direction',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'He needed the tools to translate\nhis 20+ years of expertise into\ndigital credibility.',
                              style: miniText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 37.0,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.not_interested,
                              size: 55.0,
                              color: Color.fromRGBO(40, 216, 255, 1),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              'No Insights',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'He wanted to sell products, but\ndidn\’t have any audience\ninsights to use.',
                              style: miniText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  CaseStudyTitle(
                    subtitle: 'He Needed A Strategy',
                    title: 'So Here\'s What I Did',
                  ),
                  StudyFeature(
                    path: 'assets/yuzu1.png',
                    text:
                        'I worked alongside Mark to create a monetization strategy',
                  ),
                  StudyFeature(
                    path: 'assets/yuzu2.png',
                    text:
                        'We created a list of products targeted around different interests. This would help us evaluate interest based on sales.',
                  ),
                  StudyFeature(
                    path: 'assets/yuzu3.png',
                    text:
                        'We decided that social proof was going to be instrumental in quickly assuring the customer of Mark’s credibility.',
                  ),
                  StudyFeature(
                    path: 'assets/yuzu4.png',
                    text:
                        'We created a simple landing page to establish trust with the user and direct them immediately to the sale. ',
                  ),
                  CaseStudyTitle(
                    subtitle: 'After The Products Launched',
                    title: 'Here\'s What Happened',
                  ),
                  StudyFeature(
                      path: 'assets/yuzu5.png',
                      text:
                          'Since the launch, Mark has gone on to develop more products and further flesh out his marketing strategy based on the insights we provided.\n\nYou can also catch him performing every year at the Orange County Fair.'),
                  FinalCTA(),
                  CustomBottomNav(
                    index: 3,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
