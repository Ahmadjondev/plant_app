import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithCustomerUnderline extends StatelessWidget {
  TitleWithCustomerUnderline({required this.name, required this.call, Key? key})
      : super(key: key);
  String name;
  VoidCallback call;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Row(
        children: [
          Container(
            height: 24,
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: defaultPadding / 4),
                  child: Text(
                    name,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: defaultPadding / 4),
                    height: 7,
                    color: primaryColor.withOpacity(0.2),
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          MaterialButton(
            onPressed: call,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "More",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
