// ignore_for_file: must_be_immutable

import 'package:car_dealership/providers/cars_api.dart';
import 'package:car_dealership/screens/model_info_screen.dart';
import 'package:car_dealership/widgets/app_bar_widget.dart';
import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../widgets/footer.dart';

class ModelsScreen extends StatelessWidget {
  ModelsScreen({super.key});
  static const routeName = 'models';
  CurrencyFormatterSettings som = CurrencyFormatterSettings(
    symbol: '',
    thousandSeparator: ' ',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF227093),
        title: const AppBarWidget(),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 40),
              child: Text(
                'Barcha Kia modellari',
                style: TextStyle(fontSize: 50, color: Color(0xFF05141F)),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 100),
              child: Text(
                'Ixcham',
                style: TextStyle(fontSize: 45, color: Color(0xFF05141F)),
              ),
            ),
            FutureBuilder(
              future: Provider.of<CarApi>(context).getModels('Ixcham'),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GridView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1.4),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.goNamed(ModelInfoScreen.routeName, params: {'name': snapshot.data![index].name});
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50, top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    // height: 250,
                                    child: Image.network(snapshot.data![index].image),
                                  ),
                                  Text(
                                    snapshot.data![index].name,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                  Text(
                                    '${CurrencyFormatter.format(snapshot.data![index].price, som)} so\'m dan',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: const Color(0xFF05141F),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : snapshot.connectionState == ConnectionState.waiting
                        ? const Center(child: CircularProgressIndicator())
                        : Center(
                            child: Text(snapshot.error.toString()),
                          );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 100, bottom: 10),
              child: Text(
                'Biznes-klass va o’rta klass',
                style: TextStyle(fontSize: 45, color: Color(0xFF05141F)),
              ),
            ),
            FutureBuilder(
              future: Provider.of<CarApi>(context).getModels("Biznes-klass va o’rta klass"),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1.4),
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.goNamed(ModelInfoScreen.routeName, params: {'name': snapshot.data![index].name});
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50, top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    // height: 250,
                                    child: Image.network(snapshot.data![index].image),
                                  ),
                                  Text(
                                    snapshot.data![index].name,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                  Text(
                                    '${CurrencyFormatter.format(snapshot.data![index].price, som)} so\'m dan',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: const Color(0xFF05141F),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : snapshot.connectionState == ConnectionState.waiting
                        ? const Center(child: CircularProgressIndicator())
                        : Center(
                            child: Text(snapshot.error.toString()),
                          );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 100, bottom: 10),
              child: Text(
                'Krossover va yo’ltanlamas',
                style: TextStyle(fontSize: 45, color: Color(0xFF05141F)),
              ),
            ),
            FutureBuilder(
              future: Provider.of<CarApi>(context).getModels('Krossover va yo’ltanlamas'),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GridView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1.4),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.goNamed(ModelInfoScreen.routeName, params: {'name': snapshot.data![index].name});
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50, top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    // height: 250,
                                    child: Image.network(snapshot.data![index].image),
                                  ),
                                  Text(
                                    snapshot.data![index].name,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                  Text(
                                    '${CurrencyFormatter.format(snapshot.data![index].price, som)} so\'m dan',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: const Color(0xFF05141F),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : snapshot.connectionState == ConnectionState.waiting
                        ? const Center(child: CircularProgressIndicator())
                        : Center(
                            child: Text(snapshot.error.toString()),
                          );
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 50, top: 100, bottom: 10),
              child: Text(
                'Tijorat avtomobillari',
                style: TextStyle(fontSize: 45, color: Color(0xFF05141F)),
              ),
            ),
            FutureBuilder(
              future: Provider.of<CarApi>(context).getModels('Tijorat avtomobillari'),
              builder: (context, snapshot) {
                return snapshot.hasData
                    ? GridView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(bottom: 100),
                        itemCount: snapshot.data!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, childAspectRatio: 1.4),
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.goNamed(ModelInfoScreen.routeName, params: {'name': snapshot.data![index].name});
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50, top: 50),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 250,
                                    // height: 250,
                                    child: Image.network(snapshot.data![index].image),
                                  ),
                                  Text(
                                    snapshot.data![index].name,
                                    style: const TextStyle(
                                      fontSize: 30,
                                      color: Color(0xFF05141F),
                                    ),
                                  ),
                                  Text(
                                    '${CurrencyFormatter.format(snapshot.data![index].price, som)} so\'m dan',
                                    style: GoogleFonts.montserrat(
                                      fontSize: 16,
                                      color: const Color(0xFF05141F),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      )
                    : snapshot.connectionState == ConnectionState.waiting
                        ? const Center(child: CircularProgressIndicator())
                        : Center(
                            child: Text(snapshot.error.toString()),
                          );
              },
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
