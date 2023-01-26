
import 'package:flutter/material.dart';

import '../constants.dart';

class FeaturePlantCard extends StatelessWidget {
  FeaturePlantCard({Key? key, required this.image, required this.press})
      : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: size.width * 0.8,
        height: 195,
        margin: const EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding / 2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image))),
      ),
    );
  }
}
