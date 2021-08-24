import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'package:my_portfolio/widgets/widgets.dart';

import '../constants.dart';

class ContentHeader extends StatefulWidget {
  const ContentHeader({Key? key}) : super(key: key);

  @override
  _ContentHeaderState createState() => _ContentHeaderState();
}

class _ContentHeaderState extends State<ContentHeader> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: HeaderMobile(),
        tablet: HeaderDesktop(),
        desktop: HeaderDesktop());
  }
}

class HeaderDesktop extends StatefulWidget {
  const HeaderDesktop({Key? key}) : super(key: key);

  @override
  _HeaderDesktopState createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomContainer(
      height: 600,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: Responsive.isDesktop(context) ? 580 : 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Not Your Average Designer',
                      style: Responsive.isDesktop(context)
                          ? titleTextStyle
                          : miniTitle,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                        'I Build Strategic Design Systems To Help Your Business Scale',
                        style: subtitleTextStyle),
                    SizedBox(
                      height: 20.0,
                    ),
                    ChatButton(
                      buttonText: 'Let\'s Chat',
                      width: 250.0,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height:
                    Responsive.isDesktop(context) ? 450.0 : (width / 3) + 20,
                child: Image(
                  image: AssetImage('assets/header.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderMobile extends StatefulWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  _HeaderMobileState createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return CustomContainer(
      height: 800,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 4 * width / 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Not Your Average Designer',
                      style: miniTitle,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'I Build Strategic Design Systems To Help Your Business Scale',
                      style: miniText,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ChatButton(
                      buttonText: 'Let\'s Chat',
                      width: 2 * width / 3,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                width: 3 * width / 4,
                child: Image(
                  image: AssetImage('assets/header.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
