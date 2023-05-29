import 'package:car_dealership/widgets/app_bar_widget.dart';
import 'package:car_dealership/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecialOffersScreen extends StatelessWidget {
  const SpecialOffersScreen({super.key});
  static const routeName = 'maxsus';

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarWidget(),
        backgroundColor: const Color(0xFF227093),
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 50, top: 40, bottom: 40),
            child: Text(
              'Maxsus takliflar',
              style: TextStyle(fontSize: 50, color: Color(0xFF05141F)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: width * 0.21,
                height: 400,
                color: Colors.grey[100],
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width * 0.21,
                      child: Image.network(
                        'https://storage.kun.uz/source/9/Ft-zwD3CBaQoN2gP-wAzbERVsyCxYROJ.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 10,
                      ),
                      child: Text(
                        '12 oy davomida foizsiz bo\'lib to\'lash',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color(0xFF05141F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width * 0.21,
                height: 400,
                color: Colors.grey[100],
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width * 0.21,
                      child: Image.network(
                        'https://www.autocar.co.nz/wp-content/uploads/2021/06/Kia-Sorento-PHEV-Premium_front-static_www-750x375.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 10,
                      ),
                      child: Text(
                        'Kreditlash uchun maxsus taklif',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color(0xFF05141F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width * 0.21,
                height: 400,
                color: Colors.grey[100],
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width * 0.21,
                      child: Image.network(
                        'https://listcarbrands.com/wp-content/uploads/2022/08/Can-the-Kia-Seltos-Tow-a-Trailer-600x400.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 10,
                      ),
                      child: Text(
                        'Asaka Bank-dan 50% avans to\'lovi bilan avtomobil krediti, butun model oralig\'i uchun 0% stavka',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color(0xFF05141F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width * 0.21,
                height: 400,
                color: Colors.grey[100],
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      width: width * 0.21,
                      child: Image.network(
                        'https://stimg.cardekho.com/images/cms/carnewsimages/editorimages/640aea8a230cd.jpg',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                        top: 10,
                      ),
                      child: Text(
                        'Davr Bank-dan 0% avans to\'lovi bilan avtomobil krediti, butun model oralig\'i uchun 24% stavka',
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
                          color: const Color(0xFF05141F),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Footer(),
        ],
      ),
    );
  }
}
