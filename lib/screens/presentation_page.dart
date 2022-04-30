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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
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
            child: Container(
              padding: const EdgeInsets.all(25),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(
                      topLeft:
                          Radius.circular(MediaQuery.of(context).size.width),
                      topRight:
                          Radius.circular(MediaQuery.of(context).size.width))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Detailed Hourly Forecast',
                    style: Theme.of(context).textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Get in - depth weather information.',
                    style: Theme.of(context).textTheme.headline4,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        gradient: AppColors.backgound2,
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Center(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
