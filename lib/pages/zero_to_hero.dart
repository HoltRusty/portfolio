import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'package:my_portfolio/widgets/widgets.dart';
import 'package:my_portfolio/constants.dart';

class ZeroToHero extends StatefulWidget {
  const ZeroToHero({Key? key}) : super(key: key);

  @override
  _ZeroToHeroState createState() => _ZeroToHeroState();
}

class _ZeroToHeroState extends State<ZeroToHero> {
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
                    'Zero To Hero',
                    style: megaTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'How The Art Of My Story went from no name brand\nto successful business after 1 interview',
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 65.0),
              color: Colors.white12,
              height: Responsive.isDesktop(context) ? 500.0 : 950.0,
              child: Responsive.isDesktop(context)
                  ? Column(
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
                          'How do you help an aspiring Christian\nSpeaker who has',
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
                                    'No Time',
                                    style: emphasizedTextStyle,
                                  ),
                                  Text(
                                    'There were only 2 weeks until\nthe interview was broadcasted live,\nwhich meant we had to move!',
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
                                    'No Lead Capturing',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'No matter how many people listened to\nthe interview, if there is no offer,\nthen there is no value for the company.',
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
                                    'No Monetization Plan',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'She had an amazing chance to share\nher testimony, but no ideas on how to\nadd value to the listener\'s lives.',
                                    style: miniText,
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
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
                          'How do you help an aspiring Christian Speaker who has',
                          style: subtitleTextStyle,
                          textAlign: TextAlign.center,
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
                              'No Time',
                              style: emphasizedTextStyle,
                            ),
                            Text(
                              'There were only 2 weeks until\nthe interview was broadcasted live,\nwhich meant we had to move!',
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
                              'No Lead Capturing',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'No matter how many people listened to\nthe interview, if there is no offer,\nthen there is no value for the company.',
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
                              'No Monetization Plan',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'She had an amazing chance to share\nher testimony, but no ideas on how to\nadd value to the listener\'s lives.',
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
                    subtitle: 'There Was Pretty Much No Business',
                    title: 'Here\'s What I Did',
                  ),
                  StudyFeature(
                    path: 'assets/tlr1.png',
                    text:
                        'I worked alongside them to create a marketing strategy',
                  ),
                  StudyFeature(
                    path: 'assets/tlr2.png',
                    text:
                        'We performed Market Research to empathize with the target audience and created an offer focused on the hope of restoration in a relationship',
                  ),
                  StudyFeature(
                    path: 'assets/tlr3.png',
                    text:
                        'We designed and automated a sequence of 7 devotionals offering hope to couples struggling in their marriages',
                  ),
                  StudyFeature(
                    path: 'assets/tlr4.png',
                    text:
                        'Since the audience knew Dr. Dobson, we featured him on the front page along with our message of hope.',
                  ),
                  CaseStudyTitle(
                    subtitle: 'After The Interview Aired',
                    title: 'Here\'s What Happened',
                  ),
                  StudyFeature(
                      path: 'assets/tlr5.png',
                      text:
                          'After the interview, Tracey leveraged her status to continue to develop relationships within christian influencer circles. She established a coaching brand and has generated thousands of dollars helping women in the church find their story of redemption.'),
                  FinalCTA(),
                  CustomBottomNav(
                    index: 2,
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
