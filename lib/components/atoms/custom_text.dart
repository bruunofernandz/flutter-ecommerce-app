import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String title;
  final TextStyle? style;
  final TextAlign? textAlign;
  const CustomText({Key? key, required this.title, this.style, this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style,
      textAlign: textAlign,
    );
  }
}
