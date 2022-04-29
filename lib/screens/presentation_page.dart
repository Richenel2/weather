import 'package:flutter/material.dart';
import 'package:weather/constants.dart/assets.dart';
import 'package:weather/constants.dart/colors.dart';
import 'package:weather/constants.dart/size.dart';
import 'package:weather/widgets/circle_indentifiation.dart';

class PresentationPage extends StatefulWidget {
  const PresentationPage({Key? key}) : super(key: key);

  @override
  State<PresentationPage> createState() => _PresentationPageState();
}

class _PresentationPageState extends State<PresentationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text('skip'),
        )
      ]),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const SizedBox(
          width: double.infinity,
        ),
        Image.asset(
          AppAssets.moon,
          width: AppSize.imageWidth,
          height: AppSize.imageHeight,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircleIndentification(
                isMe: true,
              ),
              CircleIndentification(),
              CircleIndentification(),
              CircleIndentification(),
            ],
          ),
        ),
        Expanded(
          child: Stack(clipBehavior: Clip.hardEdge, children: [
            Positioned(
              child: CircleAvatar(
                backgroundColor: AppColors.white,
                radius: 225,
                child: Column(children: [
                  Text('Detailed Hourly Forecast',style: Theme.of(context).textTheme.headline2,)
                ]),
              ),
              top: 0,
              left: -225 + MediaQuery.of(context).size.width / 2,
            ),
          ]),
        )
      ]),
    );
  }
}
