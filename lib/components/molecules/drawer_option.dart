import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:page_transition/page_transition.dart';

class DrawerOption extends StatelessWidget {
  final Widget route;
  const DrawerOption({Key? key, required this.route}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 25),
      child: GestureDetector(
        onTap: () => Navigator.push(context, PageTransition(child: route, type: PageTransitionType.fade)),
        child: Row(
          children: [
            Icon(
              Icons.settings,
              color: Theme.of(context).kTextDark.withOpacity(0.5),
              size: 25,
            ),
            const SizedBox(
              width: 15,
            ),
            CustomText(
              title: "Settings",
              style: TextStyle(color: Theme.of(context).kTextDark, fontSize: 17),
            )
          ],
        ),
      ),
    );
  }
}
