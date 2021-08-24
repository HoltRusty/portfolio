import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/pages/pages.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import 'dart:js' as js;

import '../constants.dart';

class CustomBottomNav extends StatefulWidget {
  final int index;
  const CustomBottomNav({Key? key, required this.index}) : super(key: key);

  @override
  _CustomBottomNavState createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    bool isHome = widget.index > 0 ? false : true;

    return Responsive(
      mobile: BottomNavMobile(
        index: widget.index,
        isHome: isHome,
      ),
      tablet: BottomNavDesktop(
        index: widget.index,
        isHome: isHome,
      ),
      desktop: BottomNavDesktop(
        isHome: isHome,
        index: widget.index,
      ),
    );
  }
}

class BottomNavDesktop extends StatefulWidget {
  final int index;
  final bool isHome;
  const BottomNavDesktop({Key? key, required this.index, required this.isHome})
      : super(key: key);

  @override
  _BottomNavDesktopState createState() => _BottomNavDesktopState();
}

class _BottomNavDesktopState extends State<BottomNavDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white12,
      width: width,
      height: 250.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65.0,
              ),
              Text(
                'Navigation',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(
                onPressed: widget.isHome
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyHomePage(title: 'Nunya'),
                          ),
                        ),
                child: Text(
                  'Home',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [calendly]);
                },
                child: Text(
                  'Contact Me',
                  style: bottomButton,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65.0,
              ),
              Text(
                'Case Studies',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6.0,
              ),
              TextButton(
                onPressed: widget.index == 1
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => StartupSuccess(),
                          ),
                        ),
                child: Text(
                  'Startup Success',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: widget.index == 2
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ZeroToHero(),
                          ),
                        ),
                child: Text(
                  'Zero To Hero',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: widget.index == 3
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyMissionMonetize(),
                          ),
                        ),
                child: Text(
                  'My Mission: Monetize',
                  style: bottomButton,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 65.0,
              ),
              Text(
                'Tools Used',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [figma]);
                },
                child: Text(
                  'Figma',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [github]);
                },
                child: Text(
                  'Flutter',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [firebase]);
                },
                child: Text(
                  'Firebase',
                  style: bottomButton,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BottomNavMobile extends StatefulWidget {
  final int index;
  final bool isHome;
  const BottomNavMobile({Key? key, required this.isHome, required this.index})
      : super(key: key);

  @override
  _BottomNavMobileState createState() => _BottomNavMobileState();
}

class _BottomNavMobileState extends State<BottomNavMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white12,
      width: width,
      height: 500.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Navigation',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(
                onPressed: widget.isHome
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyHomePage(title: 'Nunya'),
                          ),
                        ),
                child: Text(
                  'Home',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [calendly]);
                },
                child: Text(
                  'Contact Me',
                  style: bottomButton,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Case Studies',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6.0,
              ),
              TextButton(
                onPressed: widget.index == 1
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => StartupSuccess(),
                          ),
                        ),
                child: Text(
                  'Startup Success',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: widget.index == 2
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => ZeroToHero(),
                          ),
                        ),
                child: Text(
                  'Zero To Hero',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: widget.index == 3
                    ? () {}
                    : () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyMissionMonetize(),
                          ),
                        ),
                child: Text(
                  'My Mission: Monetize',
                  style: bottomButton,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Tools Used',
                style: emphasizedTextStyle,
              ),
              SizedBox(
                height: 6,
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [figma]);
                },
                child: Text(
                  'Figma',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [github]);
                },
                child: Text(
                  'Flutter',
                  style: bottomButton,
                ),
              ),
              TextButton(
                onPressed: () {
                  js.context.callMethod('open', [firebase]);
                },
                child: Text(
                  'Firebase',
                  style: bottomButton,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
