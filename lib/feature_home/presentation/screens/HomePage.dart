import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:pizza_quick_app/Core/widgets/AnimateBackground.dart';
import 'package:pizza_quick_app/feature_home/data/PizzaData.dart';
import 'package:pizza_quick_app/feature_home/presentation/widgets/AppBar_HomePage.dart';
import 'package:pizza_quick_app/feature_home/presentation/widgets/PizzaItem.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbarHomePage(context),
        body: animateBackground(
          context: context,
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    topItem(
                        context: context,
                        icon: LineIcons.pizzaSlice,
                        title: "Pizza",
                        onTapedColor: true),
                    topItem(
                        context: context,
                        icon: LineIcons.hamburger,
                        title: "Hamburger",
                        onTapedColor: false),
                    topItem(
                        context: context,
                        icon: LineIcons.hotDog,
                        title: "Hotdog",
                        onTapedColor: false),
                    topItem(
                        context: context,
                        icon: LineIcons.carrot,
                        title: "Vegetarian food",
                        onTapedColor: false),
                  ],
                ),
              ),
              const SizedBox(
                height: 19,
              ),
              Flexible(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return PizzaItemWidget(context, index);
                  },
                  itemCount: pizzaData.length,
                ),
              ),
            ],
          ),
        ));
  }

  Widget topItem({
    required BuildContext context,
    required IconData icon,
    required String title,
    required bool onTapedColor,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: onTapedColor ? Colors.amber.shade800 : Colors.grey.shade100,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(6, 6, 3, 6),
                child: Icon(icon,
                    color: onTapedColor ? Colors.white : Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 6, 6, 6),
                child: Text(
                  title,
                  style: TextStyle(
                      color: onTapedColor ? Colors.white : Colors.black,
                      fontWeight:
                          onTapedColor ? FontWeight.bold : FontWeight.w400,
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
