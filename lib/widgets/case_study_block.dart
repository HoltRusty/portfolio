import 'package:flutter/material.dart';

import '../constants.dart';
import 'case_study_button.dart';
import 'chat_button.dart';

class CaseStudyBlock extends StatefulWidget {
  String title;
  String body;
  int index;
  CaseStudyBlock(
      {Key? key, required this.title, required this.body, required this.index})
      : super(key: key);

  @override
  _CaseStudyBlockState createState() => _CaseStudyBlockState();
}

class _CaseStudyBlockState extends State<CaseStudyBlock> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.white,
      ),
      width: 350,
      height: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: blackTitle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 25.0,
          ),
          Text(
            widget.body,
            style: blackText,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40.0,
          ),
          CaseStudyButton(
            buttonText: 'Check It Out',
            width: 200,
            index: widget.index,
          )
        ],
      ),
    );
  }
}
