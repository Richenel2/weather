import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather/constants.dart/assets.dart';
import 'package:weather/constants.dart/colors.dart';
import 'package:weather/constants.dart/size.dart';
import 'package:weather/screens/presentation_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PresentationPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppColors.backgound1),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.group,width: AppSize.imageWidth,height: AppSize.imageHeight,),
              Text(
                'Weather',
                style: Theme.of(context).textTheme.headline1,
              ),
              Text(
                'Forecast',
                style: Theme.of(context).textTheme.headline3,
              )
            ]),
      ),
    );
  }
}
