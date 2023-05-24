// ignore_for_file: unused_import

import 'package:car_dealership/providers/cars_api.dart';
import 'package:car_dealership/screens/example.dart';
import 'package:car_dealership/screens/home_screen.dart';
import 'package:car_dealership/screens/konfigurator_screen.dart';
import 'package:car_dealership/screens/models_screen.dart';
import 'package:car_dealership/screens/special_offers_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CarApi(),
        )
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Kia.uz',
        routerConfig: GoRouter(initialLocation: '/', routes: [
          GoRoute(
            path: '/',
            name: HomeScreen.routeName,
            builder: (context, state) => HomeScreen(),
            routes: [
              GoRoute(
                path: 'models',
                name: ModelsScreen.routeName,
                builder: (context, state) => ModelsScreen(),
              ),
              GoRoute(
                path: 'konfigurator',
                name: KonfiguratorScreen.routeName,
                builder: (context, state) => KonfiguratorScreen(),
              ),
              GoRoute(
                path: 'maxsus',
                name: SpecialOffersScreen.routeName,
                builder: (context, state) => SpecialOffersScreen(),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
