import 'package:flutter/material.dart';
import 'package:weather/constants.dart/colors.dart';

class CircleIndentification extends StatelessWidget {
  final bool isMe;
  const CircleIndentification({Key? key, this.isMe = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        width: isMe ? 15 : 5,
        height: 5,
        decoration: BoxDecoration(
          color: isMe ? AppColors.black : AppColors.white,
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
      ),
    );
  }
}
