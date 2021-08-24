import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:my_portfolio/pages/pages.dart';

import '../constants.dart';

class MobileDrawer extends StatefulWidget {
  final bool isHome;
  const MobileDrawer({Key? key, required this.isHome}) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Center(
              child: Text(
                'Navigation:',
                style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          ListTile(
            title: TextButton(
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
                    fontSize: 22.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            title: TextButton(
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
                    fontSize: 22.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
            title: TextButton(
              onPressed: () {
                js.context.callMethod('open', [calendly]);
              },
              child: Text(
                'Contact Me',
                style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.black54,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
