import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final BoxDecoration? boxDecoration;
  final TextStyle? textStyle;
  const CustomButton({Key? key, required this.title, this.boxDecoration, this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: boxDecoration,
      child: Center(
          child: Text(
        title,
        style: textStyle,
      )),
    );
  }
}
