import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:pizza_quick_app/Core/utils/Animation.dart';

Widget customMyButton(
    {required Function() onTap,
    required Color backgroundColor,
    required String title,
    required TextStyle style}) {
  return Bounceable(
      onTap: onTap,
      child: animationB(
        delay: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            color: backgroundColor,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  title,
                  style: style,
                ),
              ),
            ),
          ),
        ),
      ));
}
