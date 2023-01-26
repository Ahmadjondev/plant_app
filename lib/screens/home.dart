import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant/constants.dart';

import '../components/home_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/menu.svg'),
        ),
      ),
      body: const Body(),
      bottomNavigationBar: Container(
        height: 65,
        padding: const EdgeInsets.only(
            left: defaultPadding * 2,
            right: defaultPadding * 2,
            bottom: defaultPadding),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -10),
              blurRadius: 35,
              color: primaryColor.withOpacity(0.38),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/flower.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
            ),
          ],
        ),
      ),
    );
  }
}
