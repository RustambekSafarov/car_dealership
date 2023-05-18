// ignore_for_file: unused_import

import 'package:car_dealership/screens/home_screen.dart';
import 'package:car_dealership/screens/models_screen.dart';
import 'package:car_dealership/style/appBar_style.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool modellar = true;
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
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Tanlov va sotib olish',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Konfigurator',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Maxsus takliflar',
                    style: appBarText,
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
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Dilerlar',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Test drayvga yozilish',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Kia Olami',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () {},
                  child: Text(
                    'Test drayvga yozilish',
                    style: appBarText,
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
