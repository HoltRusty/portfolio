import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  double height;
  Widget child;
  CustomContainer({Key? key, required this.height, required this.child})
      : super(key: key);
  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 700.0),
      width: MediaQuery.of(context).size.width * 1 / 2,
      height: widget.height,
      child: widget.child,
    );
  }
}
