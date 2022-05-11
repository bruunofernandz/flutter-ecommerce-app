import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/atoms/custom_chip.dart';
import 'package:flutter_ecommerce/components/molecules/card_categories.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/components/molecules/drawer_option.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/settings.dart';

class Shop extends StatefulWidget {
  static const String routeName = '/home';

  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int _current = 0;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  final CarouselController _controller = CarouselController();

  static const categories = [
    "Tech",
    "Beauty",
    "Feeling",
    "Sweet",
    "Cake",
    "Mans",
    "Chairs",
  ];

  static const bestSelling = [
    "Comfort",
    "Photo",
    "Drinks",
    "MacOS",
    "Fragance",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _globalKey,
        backgroundColor: Theme.of(context).kBackgroundColor,
        drawer: Drawer(
          child: drawerContent(context),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 50, left: 32),
                      child: CustomText(
                        title: "Welcome,",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 32),
                      child: CustomText(
                        title: "Bruno Alves !",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, fontFamily: "Inter"),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                CarouselSlider(
                  carouselController: _controller,
                  options: CarouselOptions(
                      height: 162.0,
                      autoPlay: true,
                      viewportFraction: 0.88,
                      enableInfiniteScroll: false,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _current = index;
                        });
                      }),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: 325,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: const DecorationImage(
                                  image: AssetImage("assets/images/fone.jpg"), fit: BoxFit.cover)),
                          // child: Container(
                          //   padding: const EdgeInsets.all(10),
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(10.0),
                          //       gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                          //         Colors.black.withOpacity(.7),
                          //         Colors.black.withOpacity(.0),
                          //       ])),
                          // ),
                        );
                      },
                    );
                  }).toList(),
                ),
                const SizedBox(
                  height: 16,
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [1, 2, 3, 4, 5].asMap().entries.map((entry) {
                //     return GestureDetector(
                //       onTap: () => _controller.animateToPage(entry.key),
                //       child: Container(
                //         width: 12.0,
                //         height: 12.0,
                //         margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                //         decoration: BoxDecoration(
                //             shape: BoxShape.circle,
                //             color: _current == entry.key
                //                 ? Theme.of(context).kPrimaryColor
                //                 : (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black)
                //                     .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                //       ),
                //     );
                //   }).toList(),
                // ),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Favorites",
                        style: TextStyle(color: Theme.of(context).kTextDark, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      CustomText(
                        title: "All",
                        style: TextStyle(
                            color: Theme.of(context).kTextDark.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 164,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 32),
                    children: [
                      for (var i = 0; i < bestSelling.length; i++)
                        makeCategory(
                            aspectRatio: 3 / 3.3, image: 'assets/images/category-$i.jpg', title: bestSelling[i])
                    ],
                  ),
                ),
                const SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        title: "Categories",
                        style: TextStyle(color: Theme.of(context).kTextDark, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      CustomText(
                        title: "All",
                        style: TextStyle(
                            color: Theme.of(context).kTextDark.withOpacity(0.5),
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 30,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.only(left: 32),
                    children: const [
                      CustomChip(selected: true),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: CustomChip(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Column(
                  children: [
                    // Container(
                    //   margin: const EdgeInsets.only(bottom: 20),
                    //   height: 40,
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    //       hintText: 'Searching for a product',
                    //       prefixIcon: Icon(
                    //         Icons.search_rounded,
                    //         color: Theme.of(context).kTextDark.withOpacity(.5),
                    //       ),
                    //       border: OutlineInputBorder(
                    //           borderSide: BorderSide(color: Theme.of(context).kTextLight),
                    //           borderRadius: BorderRadius.circular(5)),
                    //     ),
                    //   ),
                    // ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     CustomText(
                    //       title: "Categories",
                    //       style:
                    //           TextStyle(color: Theme.of(context).kTextDark, fontSize: 18, fontWeight: FontWeight.bold),
                    //     ),
                    //     CustomText(
                    //       title: "All",
                    //       style: TextStyle(
                    //           color: Theme.of(context).kTextDark.withOpacity(0.5),
                    //           fontSize: 18,
                    //           fontWeight: FontWeight.bold),
                    //     ),
                    //   ],
                    // ),

                    SizedBox(
                      height: 144,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: const EdgeInsets.only(left: 36),
                        children: [
                          for (var i = 0; i < categories.length; i++)
                            makeCategory(
                                aspectRatio: 2.3 / 2.3, image: "assets/images/image-$i.jpg", title: categories[i])
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}

Widget makeCategory({image, title, aspectRatio}) {
  return Padding(
    padding: const EdgeInsets.only(right: 16.0),
    child: CardCategorie(
      aspectRatio: aspectRatio,
      image: image,
      title: title,
    ),
  );
}

Widget drawerContent(BuildContext context) {
  return Column(
    children: [
      Container(
        color: const Color(0xFF1DC690),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(width: 4, color: Theme.of(context).kBackgroundColor),
                            borderRadius: BorderRadius.circular(50),
                            image: const DecorationImage(
                                image: AssetImage('assets/images/perfil.jpg'), fit: BoxFit.cover))),
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      title: "Alice Jhonson",
                      style: TextStyle(color: Theme.of(context).kTextLight, fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomText(
                      title: "alice_jhonson@gmail.com",
                      style: TextStyle(color: Theme.of(context).kTextDark.withOpacity(0.8), fontSize: 15),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      const DrawerOption(route: SettingsPage()),
    ],
  );
}
