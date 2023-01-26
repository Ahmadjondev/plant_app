import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home.dart';

void main() {
  runApp(const PlantApp());
}

class PlantApp extends StatelessWidget {
  const PlantApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ahmadjon Dev',
      theme: ThemeData(
        primaryColor: primaryColor,
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: primaryColor
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
/*
* Powered by: Ahmadjon Dev
* Finished Date: 2022.12/19
* Plants App UI
*/