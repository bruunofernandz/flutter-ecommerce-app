import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';

class CardCategorie extends StatelessWidget {
  final String image;
  final String? title;
  final double aspectRatio;
  const CardCategorie({Key? key, required this.image, this.title, required this.aspectRatio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ])),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: CustomText(
              title: title!,
              style: TextStyle(color: Theme.of(context).kTextLight, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
        ),
      ),
    );
  }
}
