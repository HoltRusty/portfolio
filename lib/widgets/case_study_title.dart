import 'package:flutter/material.dart';

import '../constants.dart';

class CaseStudyTitle extends StatelessWidget {
  final String subtitle;
  final String title;
  const CaseStudyTitle({Key? key, required this.subtitle, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 150.0,
        ),
        Text(
          subtitle,
          style: plainTextStyle,
          textAlign: TextAlign.center,
        ),
        Text(
          title,
          style: megaTitle,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 50.0,
        ),
      ],
    );
  }
}
