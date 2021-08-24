import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/pages.dart';
import 'package:my_portfolio/widgets/case_study_block.dart';
import 'package:my_portfolio/widgets/responsive.dart';

import '../constants.dart';

// todo -- integrate Calendly
// https://calendly.com/holtpr88/15min

class CaseStudy extends StatefulWidget {
  const CaseStudy({Key? key}) : super(key: key);

  @override
  _CaseStudyState createState() => _CaseStudyState();
}

class _CaseStudyState extends State<CaseStudy> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 50.0),
      width: width,
      height: 800,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            right: 0,
            top: 200,
            child: Container(
              height: 900.0,
              child: Image(
                image: AssetImage('assets/wave.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Case Studies',
                style: megaTitle,
                textAlign: TextAlign.center,
              ),
              Responsive.isDesktop(context)
                  ? Text('')
                  : Text(
                      'Scroll Left To See More',
                      style: plainTextStyle,
                    ),
              SizedBox(
                height: 45.0,
              ),
              Responsive.isDesktop(context)
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CaseStudyBlock(
                          title: 'Startup Success',
                          body:
                              'What strategy did I create\nto help Touchless grow from\n a startup into a business\n in less than 6 months?',
                          index: 0,
                        ),
                        CaseStudyBlock(
                          title: 'Zero To Hero',
                          body:
                              'How did I help The Art Of My\nStory position themselves as\na professional brand with only\none podcast interview?',
                          index: 1,
                        ),
                        CaseStudyBlock(
                          title: 'Mission Monetize',
                          body:
                              'How did I help Mark Yuzuik\ncreate a system to monetize\nhis following and have them\nkeep coming back for more?',
                          index: 2,
                        ),
                      ],
                    )
                  : Container(
                      width: Responsive.isDesktop(context) ? 1200 : width,
                      height: 450,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          CaseStudyBlock(
                            title: 'Startup Success',
                            body:
                                'What strategy did I create\nto help Touchless grow from\n a startup into a business\n in less than 6 months?',
                            index: 0,
                          ),
                          CaseStudyBlock(
                            title: 'Zero To Hero',
                            body:
                                'How did I help The Art Of My\nStory position themselves as\na professional brand with only\none podcast interview?',
                            index: 1,
                          ),
                          CaseStudyBlock(
                            title: 'Mission Monetize',
                            body:
                                'How did I help Mark Yuzuik\ncreate a system to monetize\nhis following and have them\nkeep coming back for more?',
                            index: 2,
                          ),
                        ],
                      ),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
