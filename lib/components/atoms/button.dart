import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String title;
  final Color? color;
  final TextStyle? textStyle;
  final bool? hide;
  const Button(
      {Key? key,
      required this.title,
      this.color,
      this.textStyle,
      required this.hide})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(50),
          color: color),
      child: Center(
        child: hide! == false
            ? Text(
                title,
                style: textStyle,
              )
            : null,
      ),
    );
  }
}
