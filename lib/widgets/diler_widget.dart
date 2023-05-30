// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class DilerWidget extends StatelessWidget {
  Map data;
  DilerWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ListTile(
      title: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width * 0.1,
                    child: Text(data['name']),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.1,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: width * 0.4,
                      child: Text(data['address']),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: width * 0.05,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.phone_outlined),
                      Text(data['phone_number']),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
