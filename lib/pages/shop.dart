import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/components/molecules/card_categories.dart';
import 'package:flutter_ecommerce/components/atoms/custom_text.dart';
import 'package:flutter_ecommerce/components/molecules/drawer_option.dart';
import 'package:flutter_ecommerce/constants/theme.dart';
import 'package:flutter_ecommerce/pages/settings.dart';

class Shop extends StatefulWidget {
  static const String routeName = '/shop';

  const Shop({Key? key}) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();

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
          child: Column(
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
                              style: TextStyle(
                                  color: Theme.of(context).kTextLight, fontWeight: FontWeight.bold, fontSize: 20),
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
          ),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 20),
          child: Column(
            children: <Widget>[
              Container(
                height: 500,
                decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/background.jpg'), fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.2),
                  ])),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5.0),
                              child: IconButton(
                                  onPressed: () => _globalKey.currentState!.openDrawer(),
                                  icon: const Icon(
                                    Icons.menu,
                                    color: Colors.white,
                                  )),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Theme.of(context).kTypeLight,
                                    )),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopping_cart,
                                      color: Theme.of(context).kTypeLight,
                                    ))
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                title: "Our New Products",
                                style: TextStyle(
                                    color: Theme.of(context).kTextLight, fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  CustomText(
                                    title: "VIEW MORE",
                                    style: TextStyle(color: Theme.of(context).kTextLight, fontWeight: FontWeight.w600),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Theme.of(context).kTextLight,
                                    size: 15,
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          title: "Categories",
                          style:
                              TextStyle(color: Theme.of(context).kTextDark, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        CustomText(
                          title: "All",
                          style: TextStyle(
                              color: Theme.of(context).kTextDark.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var i = 0; i < categories.length; i++)
                            makeCategory(
                                aspectRatio: 2 / 2.5, image: "assets/images/image-$i.jpg", title: categories[i])
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          title: "Best Sellers category",
                          style:
                              TextStyle(color: Theme.of(context).kTextDark, fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        CustomText(
                          title: "All",
                          style: TextStyle(
                              color: Theme.of(context).kTextDark.withOpacity(0.5),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          for (var i = 0; i < bestSelling.length; i++)
                            makeCategory(
                                aspectRatio: 4 / 4, image: 'assets/images/category-$i.jpg', title: bestSelling[i])
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

Widget makeCategory({image, title, aspectRatio}) {
  return Padding(
    padding: const EdgeInsets.only(right: 10.0),
    child: CardCategorie(
      aspectRatio: aspectRatio,
      image: image,
      title: title,
    ),
  );
}
