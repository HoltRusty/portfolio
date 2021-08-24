import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/components/components.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'package:my_portfolio/widgets/widgets.dart';
import 'package:my_portfolio/constants.dart';

class StartupSuccess extends StatefulWidget {
  const StartupSuccess({Key? key}) : super(key: key);

  @override
  _StartupSuccessState createState() => _StartupSuccessState();
}

class _StartupSuccessState extends State<StartupSuccess> {
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
                    'Startup Success',
                    style: megaTitle,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'How Touchless went from startup to profitable\nbusiness in only 6 months',
                    style: subtitleTextStyle,
                    textAlign: TextAlign.center,
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
                          'How do you help a startup that has',
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
                                    'No Customers',
                                    style: emphasizedTextStyle,
                                  ),
                                  Text(
                                    'Touchless had a product and\nnobody to sell it to. They needed\nA strategy to get customers fast.',
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
                                    'No Identity',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'Since they were just starting,\nthere were no real resources to\nbuild a solid foundation.',
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
                                    'No Momentum',
                                    style: emphasizedTextStyle,
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Text(
                                    'Since the franchise recently\nstarted, there were no marketing\ninsights I could use',
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
                        Text(
                          'How do you help a startup that has',
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
                              'No Customers',
                              style: emphasizedTextStyle,
                            ),
                            Text(
                              'Touchless had a product and\nnobody to sell it to. They needed\nA strategy to get customers fast.',
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
                              'No Identity',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'Since they were just starting,\nthere were no real resources to\nbuild a solid foundation.',
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
                              'No Momentum',
                              style: emphasizedTextStyle,
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              'Since the franchise recently\nstarted, there were no marketing\ninsights I could use',
                              style: miniText,
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [],
                          ),
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
                    subtitle: 'They Needed Customers',
                    title: 'So Here\'s What I Did',
                  ),
                  StudyFeature(
                    path: 'assets/touch1.png',
                    text:
                        'We explored strategies to get them customers as fast as possible.',
                  ),
                  StudyFeature(
                    path: 'assets/touch2.png',
                    text:
                        'Since there was nothing to start with, I began creating a branding style guide based off of the franchiser\’s official website.',
                  ),
                  StudyFeature(
                    path: 'assets/touch3.png',
                    text:
                        'We explored various marketing strategies and tools to better increase conversions throughout the acquisition funnel.',
                  ),
                  StudyFeature(
                    path: 'assets/touch4.png',
                    text:
                        'We created a landing page with sales calls as a measurable conversion goal. It features a video above the fold to increase engagement and pre-sell customers on the product.',
                  ),
                  CaseStudyTitle(
                    subtitle: 'After The Website Launched',
                    title: 'Here\'s What Happened',
                  ),
                  StudyFeature(
                      path: 'assets/touch5.png',
                      text:
                          'Since the initial call, Touchless has experienced explosive growth. Laura, co-owner, told me:\n\n\“These docks sell themselves. We just have to make sure people know about them\”'),
                  FinalCTA(),
                  CustomBottomNav(
                    index: 1,
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
