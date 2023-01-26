import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant/constants.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({
    Key? key,
    required this.image,
    required this.name,
    required this.country,
    required this.price,
  }) : super(key: key);
  final String image, name, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding * 3),
              child: SizedBox(
                height: size.height * 0.78,
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: defaultPadding * 3),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              padding: EdgeInsets.symmetric(
                                  horizontal: defaultPadding),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon:
                                  SvgPicture.asset("assets/icons/back_arrow.svg"),
                            ),
                          ),
                          Spacer(),
                          IconCard(icon: "assets/icons/sun.svg"),
                          IconCard(icon: "assets/icons/icon_2.svg"),
                          IconCard(icon: "assets/icons/icon_3.svg"),
                          IconCard(icon: "assets/icons/icon_4.svg"),
                        ],
                      ),
                    )),
                    Container(
                      height: size.height * 0.8,
                      width: size.width * 0.75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(63),
                              bottomLeft: Radius.circular(63)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 60,
                                color: primaryColor.withOpacity(0.29))
                          ],
                          image: DecorationImage(
                            image: AssetImage(image),
                            fit: BoxFit.cover,
                            alignment: Alignment.centerLeft,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "$name\n",
                          style: Theme.of(context).textTheme.headline4!.copyWith(
                              color: textColor, fontWeight: FontWeight.bold),
                        ),
                        TextSpan(
                            text: country,
                            style: TextStyle(
                                fontSize: 20,
                                color: primaryColor,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: primaryColor, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Row(
                children: [
                  SizedBox(
                    width: size.width / 2,
                    height: 84,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      color: primaryColor,
                      child: Text("Buy Now",style: TextStyle(
                        color: Colors.white,
                        fontSize: 16
                      ),),
                    ),
                  ),
                  SizedBox(
                    width: size.width / 2,
                    height: 84,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Text("Description",style: TextStyle(
                        // color: Colors.white,
                        fontSize: 16
                      ),),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class IconCard extends StatelessWidget {
  IconCard({Key? key, required this.icon}) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 62,
      width: 62,
      padding: EdgeInsets.all(defaultPadding / 2),
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 22,
              color: primaryColor.withOpacity(0.22),
            ),
            BoxShadow(
              offset: Offset(-15, -15),
              blurRadius: 20,
              color: Colors.white,
            ),
          ]),
      child: SvgPicture.asset(icon),
    );
  }
}
