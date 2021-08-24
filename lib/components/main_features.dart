import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/chat_button.dart';
import 'package:my_portfolio/widgets/responsive.dart';

import '../constants.dart';

class MainFeatures extends StatefulWidget {
  const MainFeatures({Key? key}) : super(key: key);

  @override
  _MainFeaturesState createState() => _MainFeaturesState();
}

class _MainFeaturesState extends State<MainFeatures> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Responsive(
      mobile: MainFeaturesMobile(),
      tablet: MainFeaturesMobile(),
      desktop: MainFeaturesDesktop(),
    );
  }
}

class MainFeaturesDesktop extends StatefulWidget {
  const MainFeaturesDesktop({Key? key}) : super(key: key);

  @override
  _MainFeaturesDesktopState createState() => _MainFeaturesDesktopState();
}

class _MainFeaturesDesktopState extends State<MainFeaturesDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 150.0,
        ),
        Text(
          'I Work Around Your\nBusiness Goals',
          style: megaTitle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 600,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Text(
                    'Increase Your Impact',
                    style: miniTitle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'I develop strategies to turn your websites into\nyour most powerful profit-generating asset.',
                    textAlign: TextAlign.center,
                    style: plainTextStyle,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ChatButton(
                      buttonText: 'Let\'s Chat', width: 250, onPressed: () {}),
                ],
              ),
            ),
            Container(
              height: 500.0,
              child: Image(
                image: AssetImage('assets/brain.png'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Container(
          width: width,
          height: 800,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: 30,
                child: Text(
                  'Google\nCertified',
                  style: TextStyle(
                    fontSize: 350,
                    fontWeight: FontWeight.bold,
                    color: Colors.white10,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 450.0,
                    child: Image(
                      image: AssetImage('assets/cert.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    width: 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Never Lose Your Edge',
                          style: miniTitle,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'I have been trained in the exact method Google uses for rapid iteration and prototyping, which means your company is free to create without fear of falling behind.',
                          textAlign: TextAlign.center,
                          style: plainTextStyle,
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              width: 550,
              child: Column(
                children: [
                  Text(
                    'Practical Designs',
                    style: miniTitle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'With 5 years experience as a Software Engineer, I know that all designs are not equal. I create sleek, responsive prototypes that can be easily coded by your engineering team.',
                    textAlign: TextAlign.center,
                    style: plainTextStyle,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  ChatButton(
                      buttonText: 'Let\'s Chat', width: 250, onPressed: () {}),
                ],
              ),
            ),
            Container(
              height: 500.0,
              child: Image(
                image: AssetImage('assets/anime.png'),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MainFeaturesMobile extends StatefulWidget {
  const MainFeaturesMobile({Key? key}) : super(key: key);

  @override
  _MainFeaturesMobileState createState() => _MainFeaturesMobileState();
}

class _MainFeaturesMobileState extends State<MainFeaturesMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double margin = Responsive.isMobile(context) ? 70 : 100;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 150.0,
        ),
        Container(
          width: Responsive.isMobile(context) ? 550 : 700,
          child: Text(
            'I Work Around Your Business Goals',
            style: Responsive.isMobile(context) ? titleTextStyle : megaTitle,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 250.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 2 * width / 3,
              child: Image(
                image: AssetImage('assets/brain.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                Text(
                  'Increase Your Impact',
                  style: miniTitle,
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 2 * width / 3,
                  child: Text(
                    'I develop strategies to turn your websites into your most powerful profit-generating asset.',
                    textAlign: TextAlign.center,
                    style: plainTextStyle,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                ChatButton(
                    buttonText: 'Let\'s Chat', width: 250, onPressed: () {}),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 250.0,
        ),
        Container(
          width: 2 * width / 3 + 100,
          child: Image(
            image: AssetImage('assets/certmobile.png'),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 50.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Never Lose Your Edge',
              style: miniTitle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 2 * width / 3,
              child: Text(
                'I have been trained in the exact method Google uses for rapid iteration and prototyping, which means your company is free to create without fear of falling behind.',
                textAlign: TextAlign.center,
                style: plainTextStyle,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 250.0,
        ),
        Container(
          width: 3 * width / 4 + 100,
          child: Image(
            image: AssetImage('assets/anime.png'),
            fit: BoxFit.cover,
          ),
        ),
        Column(
          children: [
            Text(
              'Practical Designs',
              style: miniTitle,
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: 2 * width / 3,
              child: Text(
                'With 5 years experience as a Software Engineer, I know that all designs are not equal. I create sleek, responsive prototypes that can be easily coded by your engineering team.',
                textAlign: TextAlign.center,
                style: plainTextStyle,
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            ChatButton(buttonText: 'Let\'s Chat', width: 250, onPressed: () {}),
          ],
        ),
      ],
    );
  }
}
