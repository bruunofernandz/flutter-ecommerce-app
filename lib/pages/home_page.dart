import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/atoms/button.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/shop.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/splash.jpg'), fit: BoxFit.cover)),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomRight, colors: [Colors.black.withOpacity(.9), Colors.black.withOpacity(.2)])),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  const CustomText(
                    title: "Brand New Perspective",
                    style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const CustomText(
                    title: "Do you have a little business ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const CustomText(
                    title: "Do you want buy of regional sellers ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, PageTransition(child: const Shop(), type: PageTransitionType.fade));
                    },
                    child: CustomButton(
                      title: "Get Start",
                      boxDecoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50), color: Theme.of(context).kPrimaryColor),
                      textStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    title: "Create Account",
                    boxDecoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.transparent),
                    textStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
