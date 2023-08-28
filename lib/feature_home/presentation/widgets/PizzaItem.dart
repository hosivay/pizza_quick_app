// ignore: non_constant_identifier_names
import 'package:flutter/material.dart';
import 'package:flutter_bounceable/flutter_bounceable.dart';
import 'package:pizza_quick_app/Core/utils/Animation.dart';
import 'package:pizza_quick_app/feature_ShowPizza/presentation/screens/ShowPizza.dart';
import 'package:pizza_quick_app/feature_home/data/PizzaData.dart';

// ignore: non_constant_identifier_names
Widget PizzaItemWidget(BuildContext context, int index) {
  return Bounceable(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ShowPizza(
                  name: pizzaData[index]["Name"]!,
                  img: pizzaData[index]["img"]!,
                )),
      );
    },
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: animationB(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                  width: MediaQuery.sizeOf(context).width / 2.1,
                  height: MediaQuery.sizeOf(context).width / 2.7,
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 75,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(pizzaData[index]["Name"]!,
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontWeight: FontWeight.w700, fontSize: 15)),
                      ),
                      Text("Price : \$18",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  fontWeight: FontWeight.w300, fontSize: 16)),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: animationC(
              child: CircleAvatar(
                radius: 55,
                child: Hero(
                  tag: "${pizzaData[index]["img"]}:tag",
                  child: Image.asset(pizzaData[index]["img"]!)
                  ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}
