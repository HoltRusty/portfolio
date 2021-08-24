import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/chat_button.dart';
import 'package:my_portfolio/widgets/responsive.dart';

import '../constants.dart';

class FinalCTA extends StatefulWidget {
  const FinalCTA({Key? key}) : super(key: key);

  @override
  _FinalCTAState createState() => _FinalCTAState();
}

class _FinalCTAState extends State<FinalCTA> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      child: Column(
        children: [
          Container(
            width: width > 800 ? 750 : 3 * width / 4,
            height: 600.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Let\'s Get Started!',
                  style:
                      Responsive.isMobile(context) ? titleTextStyle : megaTitle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Ready to take your company to the next level?\nClick the button below so we can schedule a call centered around your goals.',
                  textAlign: TextAlign.center,
                  style: Responsive.isMobile(context)
                      ? plainTextStyle
                      : subtitleTextStyle,
                ),
                SizedBox(
                  height: 45.0,
                ),
                ChatButton(
                  buttonText: 'Let\'s Chat',
                  width: 300.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
