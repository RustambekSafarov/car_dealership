import 'package:car_dealership/widgets/diler_widget.dart';
import 'package:car_dealership/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/diler_api.dart';
import '../widgets/app_bar_widget.dart';

class DilersScreen extends StatelessWidget {
  const DilersScreen({super.key});
  static const routeName = 'dilers';

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.only(left: 50, top: 50, bottom: 50),
            child: Text(
              'Kia rasmiy dilerlari',
              style: TextStyle(
                fontSize: 50,
                color: Color(0xFF05141F),
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          FutureBuilder(
            future: Provider.of<DilerApi>(context, listen: false).getDilers(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              } else {
                final dilers = Provider.of<DilerApi>(context, listen: false).dilers;
                return ListView.builder(
                  itemCount: dilers.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => DilerWidget(
                    data: dilers[index],
                  ),
                );
              }
            },
          ),
          Footer(),
        ],
      ),
    );
  }
}
