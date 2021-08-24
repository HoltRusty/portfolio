import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import 'package:my_portfolio/widgets/responsive.dart';

class FeatureBanner extends StatelessWidget {
  const FeatureBanner({Key? key}) : super(key: key);

  // todo -- Fix Colors For Icons

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 65.0),
      color: Colors.white12,
      height: Responsive.isDesktop(context) ? 451.0 : 950,
      child: Responsive.isDesktop(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '5 Years Of Experience',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'As A',
                  style: subtitleTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.wb_incandescent,
                            size: 55.0,
                            color: Color.fromRGBO(40, 216, 255, 1),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Business Strategist',
                            style: emphasizedTextStyle,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Automate Sales Processes',
                            style: miniText,
                          ),
                          Text(
                            'Increase Conversion Rates',
                            style: miniText,
                          ),
                          Text(
                            'Monetize Audiences',
                            style: miniText,
                          ),
                          Text(
                            'Capture Leads',
                            style: miniText,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: width / 8,
                      // ),
                      Column(
                        children: [
                          Icon(
                            Icons.color_lens,
                            size: 55.0,
                            color: Color.fromRGBO(40, 216, 255, 1),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Designer',
                            style: emphasizedTextStyle,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Design Systems For Congruency',
                            style: miniText,
                          ),
                          Text(
                            'Professional Branded Designs',
                            style: miniText,
                          ),
                          Text(
                            'Created For Conversions',
                            style: miniText,
                          ),
                          Text(
                            'Rapid Prototyping',
                            style: miniText,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   width: width / 8,
                      // ),
                      Column(
                        children: [
                          Icon(
                            Icons.code_outlined,
                            size: 55.0,
                            color: Color.fromRGBO(40, 216, 255, 1),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Text(
                            'Software Engineer',
                            style: emphasizedTextStyle,
                          ),
                          SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            'Made For Web + Android + Apple',
                            style: miniText,
                          ),
                          Text(
                            'Integrate With Business Tools',
                            style: miniText,
                          ),
                          Text(
                            'Collaborate With Engineers',
                            style: miniText,
                          ),
                          Text(
                            'Pixel-Perfect Design',
                            style: miniText,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '5 Years Of Experience',
                  style: titleTextStyle,
                ),
                SizedBox(
                  height: 6.0,
                ),
                Text(
                  'As A',
                  style: subtitleTextStyle,
                ),
                SizedBox(
                  height: 30.0,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.wb_incandescent,
                      size: 55.0,
                      color: Color.fromRGBO(40, 216, 255, 1),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Business Strategist',
                      style: emphasizedTextStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Automate Sales Processes',
                      style: miniText,
                    ),
                    Text(
                      'Increase Conversion Rates',
                      style: miniText,
                    ),
                    Text(
                      'Monetize Audiences',
                      style: miniText,
                    ),
                    Text(
                      'Capture Leads',
                      style: miniText,
                    ),
                  ],
                ),
                SizedBox(
                  height: 37.0,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.color_lens,
                      size: 55.0,
                      color: Color.fromRGBO(40, 216, 255, 1),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Designer',
                      style: emphasizedTextStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Design Systems For Congruency',
                      style: miniText,
                    ),
                    Text(
                      'Professional Branded Designs',
                      style: miniText,
                    ),
                    Text(
                      'Created For Conversions',
                      style: miniText,
                    ),
                    Text(
                      'Rapid Prototyping',
                      style: miniText,
                    ),
                  ],
                ),
                SizedBox(
                  height: 37.0,
                ),
                Column(
                  children: [
                    Icon(
                      Icons.code_outlined,
                      size: 55.0,
                      color: Color.fromRGBO(40, 216, 255, 1),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Software Engineer',
                      style: emphasizedTextStyle,
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'Made For Web + Android + Apple',
                      style: miniText,
                    ),
                    Text(
                      'Integrate With Business Tools',
                      style: miniText,
                    ),
                    Text(
                      'Collaborate With Engineers',
                      style: miniText,
                    ),
                    Text(
                      'Pixel-Perfect Design',
                      style: miniText,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}
