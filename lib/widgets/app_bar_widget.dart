import 'package:car_dealership/style/appBar_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

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
            width: constraints.maxWidth * 0.3,
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
                    onTap: () {},
                    child: Text(
                      'Modellar',
                      style: appBarText,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Tanlov va sotib olish',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Konfigurator',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Maxsus takliflar',
                    style: appBarText,
                  ),
                ),
              ],
            ),
          ),
          Image.network(
            'https://telegra.ph/file/fee6f9ababebcb91fd334.png',
            fit: BoxFit.cover,
          ),
          Container(
            width: constraints.maxWidth * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Dilerlar',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Test drayvga yozilish',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Kia Olami',
                    style: appBarText,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'Test drayvga yozilish',
                    style: appBarText,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.phone,
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'RU',
                        style: appBarText,
                      ),
                      Text(
                        'UZ',
                        style: appBarText,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
