import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/button.dart';
import 'package:flutter_ecommerce/components/custom_text.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/shop.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;
  bool hide = false;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(vsync: this, duration: const Duration(milliseconds: 500));

    _scaleAnimation = Tween<double>(begin: 1.0, end: 30.0).animate(_scaleController)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          Navigator.push(context, PageTransition(child: const Shop(), type: PageTransitionType.fade));
        }
      });
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
                    height: 16,
                  ),
                  const CustomText(
                    title: "Let's start with our summer collection",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const SizedBox(
                    height: 200,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        hide = true;
                      });
                      _scaleController.forward();
                    },
                    child: AnimatedBuilder(
                      animation: _scaleController,
                      builder: (context, child) => Transform.scale(
                        scale: _scaleAnimation.value,
                        child: Button(
                          title: "Get Start",
                          color: Colors.white,
                          hide: hide,
                          textStyle: TextStyle(fontWeight: FontWeight.bold, color: Theme.of(context).kPrimaryColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Button(
                    title: "Create Account",
                    hide: false,
                    color: Colors.transparent,
                    textStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
