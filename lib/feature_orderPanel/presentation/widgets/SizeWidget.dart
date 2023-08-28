import 'package:flutter/material.dart';

Widget sizeWidget({bool? isTaped = false, required String title}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 40,
        height: 40,
        color: isTaped! ? Colors.amber.shade700 : Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                  color: isTaped ? Colors.white : Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
    ),
  );
}
