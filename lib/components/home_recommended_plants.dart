import 'package:flutter/material.dart';

import '../constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  RecommendedPlantCard(
      {required this.image,
      required this.name,
      required this.country,
      required this.price,
      required this.press,
      Key? key})
      : super(key: key);
  String image, name, country;
  int price;
  Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          left: defaultPadding,
          top: defaultPadding / 2,
          bottom: defaultPadding,
        ),
        width: size.width * 0.4,
        height: 255,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(defaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: primaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button
                        ),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                                color: primaryColor.withOpacity(0.5)))
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: primaryColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
