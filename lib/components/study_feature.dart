import 'package:flutter/material.dart';

import '../constants.dart';

class StudyFeature extends StatelessWidget {
  final String path;
  final String text;
  const StudyFeature({required this.path, required this.text});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width > 750 ? 750 : 3 * width / 4,
          child: Image(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Container(
          width: width > 600 ? 600 : 3 * width / 4,
          child: Text(
            text,
            style: subtitleTextStyle,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 150.0,
        ),
      ],
    );
  }
}
