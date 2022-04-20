import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';

class CustomChip extends StatelessWidget {
  final bool selected;
  final String title;
  const CustomChip({Key? key, this.selected = false, this.title = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      decoration: selected
          ? BoxDecoration(color: const Color(0xFF1DC690), borderRadius: BorderRadius.circular(50))
          : BoxDecoration(border: Border.all(color: const Color(0xFF666666)), borderRadius: BorderRadius.circular(50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            title: "Fast food",
            style: TextStyle(color: selected ? Theme.of(context).kTextLight : const Color(0xFF666666)),
          ),
        ],
      ),
    );
  }
}
