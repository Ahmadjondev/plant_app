import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../screens/details_page.dart';
import 'home_feature_plants.dart';
import 'home_recommended_plants.dart';
import 'home_search_box.dart';
import 'home_title.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadSearchBox(size: size),
          TitleWithCustomerUnderline(name: "Recommended", call: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                RecommendedPlantCard(
                  image: "assets/images/image_1.png",
                  name: 'Samantha',
                  country: 'Russia',
                  price: 440,
                  press: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (context) => DetailsPage(image: 'assets/images/img.png', name: 'Samantha', country: 'Russia', price: 440,),));
                  },
                ),
              ],
            ),
          ),
          TitleWithCustomerUnderline(name: "Featured Plants", call: () {}),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
                FeaturePlantCard(
                    image: "assets/images/image_1.png", press: () {}),
              ],
            ),
          ),
          SizedBox(height: defaultPadding),
        ],
      ),
    );
  }
}
