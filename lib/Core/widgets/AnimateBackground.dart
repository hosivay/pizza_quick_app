import 'package:animate_gradient/animate_gradient.dart';
import 'package:flutter/material.dart';

Widget animateBackground(
    {required BuildContext context, required Widget child}) {
  return AnimateGradient( 
    primaryColors: [
    Theme.of(context).colorScheme.background,
    Theme.of(context).colorScheme.background,
    Theme.of(context).colorScheme.background,
    Theme.of(context).primaryColor.withOpacity(0.1),
  ], secondaryColors: [
    Theme.of(context).colorScheme.background,
    Theme.of(context).colorScheme.background,
    Theme.of(context).colorScheme.background,
    Theme.of(context).primaryColor.withOpacity(0.3),
  ], child: child);
}
