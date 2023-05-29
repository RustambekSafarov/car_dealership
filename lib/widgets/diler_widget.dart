import 'package:flutter/material.dart';

class DilerWidget extends StatelessWidget {
  const DilerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: width * 0.15,
            ),
          ],
        )
      ],
    );
  }
}
