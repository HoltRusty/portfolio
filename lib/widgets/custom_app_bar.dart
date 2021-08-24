import 'package:flutter/material.dart';
import 'package:my_portfolio/main.dart';
import 'package:my_portfolio/pages/case_studies.dart';
import 'package:my_portfolio/widgets/responsive.dart';
import '../constants.dart';
import 'custom_container.dart';
import 'dart:js' as js;

class CustomAppBar extends StatefulWidget {
  // Todo -- Learn THis trick -- ScrollOffset Opacity
  final bool isHome;

  CustomAppBar({required this.isHome});

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30.0,
                ),
                TextButton(
                  onPressed: widget.isHome
                      ? () {}
                      : () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyHomePage(title: 'title'),
                            ),
                          ),
                  child: Text(
                    'Holt Russell',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 1.0,
                ),
                SizedBox(
                  width: 1.0,
                ),
                TextButton(
                  onPressed: widget.isHome
                      ? () {}
                      : () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  MyHomePage(title: 'title'),
                            ),
                          ),
                  child: Text(
                    'Home',
                    style: TextStyle(
                        fontSize: 18.0,
                        color: widget.isHome ? Colors.white : Colors.white54,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => CaseStudies(),
                      ),
                    );
                  },
                  child: Text(
                    'Case Studies',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: !widget.isHome ? Colors.white : Colors.white54,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    js.context.callMethod('open', [calendly]);
                  },
                  child: Text(
                    'Contact Me',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white54,
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.0,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
