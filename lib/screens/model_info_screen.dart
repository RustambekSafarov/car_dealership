// ignore_for_file: must_be_immutable

import 'package:car_dealership/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/model_info.dart';
import '../widgets/app_bar_widget.dart';

class ModelInfoScreen extends StatelessWidget {
  String name;
  ModelInfoScreen({super.key, required this.name});
  static const routeName = 'model-info';

  @override
  Widget build(BuildContext context) {
    Map<String, List<String>> models = Provider.of<ModelInfo>(context, listen: false).models;
    List<String> model = models[name.toLowerCase()] ?? [];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AppBarWidget(),
        backgroundColor: const Color(0xFF227093),
        toolbarHeight: 80,
      ),
      body: ListView(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: model.length,
            itemBuilder: (context, index) => Image.network(
              model[index],
              fit: BoxFit.fitWidth,
            ),
          ),
          const Footer(),
        ],
      ),
    );
  }
}
