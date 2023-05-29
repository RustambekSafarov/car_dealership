import 'package:flutter/material.dart';

class KonfiguratorScreen extends StatefulWidget {
  const KonfiguratorScreen({super.key});
  static const routeName = 'konfigurator';

  @override
  State<KonfiguratorScreen> createState() => _KonfiguratorScreenState();
}

class _KonfiguratorScreenState extends State<KonfiguratorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ActionChip(
          label: const Text('Konfigurator'),
          onPressed: () {},
        ),
      ),
    );
  }
}
