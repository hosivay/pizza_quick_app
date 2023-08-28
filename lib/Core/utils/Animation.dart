import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

Widget animationA({required Widget child, int? delay = 0}) {
  return FadeInDown(
    delay: Duration(seconds: delay!),
    child: child,
  );
}

Widget animationB({required Widget child, int? delay = 0}) {
  return FadeIn(
    delay: Duration(seconds: delay!),
    child: child,
  );
}

Widget animationC({required Widget child, int? delay = 1,int? duration = 1700}) {
  return Swing(
    delay: Duration(seconds: delay!),
    duration: Duration(milliseconds: duration!),
    child: child,
  );
}
