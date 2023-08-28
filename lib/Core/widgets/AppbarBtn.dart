import 'package:flutter/material.dart';

Widget appbarButton({required IconData icon, required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                size: 30,
              ),
            )),
      ),
    ),
  );
}
