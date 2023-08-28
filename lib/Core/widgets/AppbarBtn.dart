 
import 'package:flutter/material.dart';

Widget appbarButton(
    {required IconData icon, required Function() onTap, bool? dark = false,bool? trasnparentBG = false}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            color: trasnparentBG! ? null : dark! ? Colors.grey.shade800 : Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 30,color: dark! ? Colors.grey.shade300 : Colors.black,
              ),
            )),
      ),
    ),
  );
}
