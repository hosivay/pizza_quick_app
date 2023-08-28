import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pizza_quick_app/Core/widgets/AnimateBackground.dart';
import 'package:pizza_quick_app/Core/widgets/AppbarBtn.dart';
import 'package:pizza_quick_app/Core/widgets/CustomButton.dart';
import 'package:pizza_quick_app/feature_orderPanel/presentation/widgets/SizeWidget.dart';

class OrderPanel extends StatelessWidget {
  const OrderPanel({super.key, required this.name, required this.img});
  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 110,
          leadingWidth: 90,
          leading: appbarButton(
              icon: CupertinoIcons.left_chevron,
              onTap: () {
                Navigator.pop(context);
              },
              dark: false,
              trasnparentBG: true),
          actions: [
            appbarButton(icon: CupertinoIcons.heart, onTap: () {}, dark: false)
          ]),
      body: animateBackground(
        context: context,
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Positioned(
                right: -constraints.maxWidth * .7,
                top: constraints.maxHeight * .1,
                child: Hero(
                  tag: "$img:tag",
                  child: ClipRect(
                    child: Image.asset(img, fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: const TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            fontStyle: FontStyle.italic)),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MenuTitle(title: "Size"),
                    Row(
                      children: [
                        sizeWidget(
                          title: "S",
                          isTaped: true,
                        ),
                        sizeWidget(
                          title: "M",
                          isTaped: false,
                        ),
                        sizeWidget(
                          title: "L",
                          isTaped: false,
                        ),
                      ],
                    ),
                    MenuTitle(title: "Price"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("\$18.00",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                    ),
                    MenuTitle(title: "Delivery"),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("30min",
                          style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
              Positioned(
                  bottom: 70,
                  left: 40,
                  right: 40,
                  child: customMyButton(
                      backgroundColor: Colors.amber.shade600.withOpacity(0.9),
                      onTap: () {},
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      title: 'Order'))
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MenuTitle({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Text(title,
          style: const TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.black,
              fontStyle: FontStyle.italic)),
    );
  }
}
