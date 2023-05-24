// ignore_for_file: unused_import

import 'package:car_dealership/screens/home_screen.dart';
import 'package:car_dealership/screens/models_screen.dart';
import 'package:car_dealership/screens/special_offers_screen.dart';
import 'package:car_dealership/style/appBar_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/konfigurator_screen.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool modellar = true;
  bool konfigurator = true;
  bool tanlov = true;
  bool taklif = true;
  bool diler = true;
  bool drayv = true;
  bool olam = true;
  bool egalari = true;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: constraints.maxWidth * 0.38,
            // color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      modellar = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      modellar = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.goNamed(ModelsScreen.routeName);
                    },
                    child: Text(
                      'Modellar',
                      style: modellar == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      tanlov = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      tanlov = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      'Kia tarixi',
                      style: tanlov == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      konfigurator = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      konfigurator = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.goNamed(KonfiguratorScreen.routeName);
                    },
                    child: Text(
                      'Konfigurator',
                      style: konfigurator == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      taklif = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      taklif = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {
                      context.goNamed(SpecialOffersScreen.routeName);
                    },
                    child: Text(
                      'Maxsus takliflar',
                      style: taklif == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              // context.goNamed(HomeScreen.routeName);
            },
            child: SizedBox(
              // width: MediaQuery.of(context).size.width / 16,
              child: Image.network(
                'https://telegra.ph/file/fee6f9ababebcb91fd334.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: constraints.maxWidth * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      diler = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      diler = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      'Dilerlar',
                      style: diler == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      drayv = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      drayv = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      'Test drayvga yozilish',
                      style: drayv == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      olam = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      olam = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      'Kia Olami',
                      style: olam == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                MouseRegion(
                  onEnter: (event) {
                    setState(() {
                      egalari = false;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      egalari = true;
                    });
                  },
                  child: InkWell(
                    hoverColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Text(
                      'Ehtiyot qismlar',
                      style: egalari == false ? appBarTextUnderlined : appBarText,
                    ),
                  ),
                ),
                IconButton(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Icon(Icons.shopping_cart_outlined),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
