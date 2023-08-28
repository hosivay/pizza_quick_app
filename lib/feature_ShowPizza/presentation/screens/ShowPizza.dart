import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_quick_app/Core/utils/Animation.dart';
import 'package:pizza_quick_app/Core/widgets/AppbarBtn.dart';
import 'package:pizza_quick_app/Core/widgets/CustomButton.dart';
import 'package:pizza_quick_app/feature_orderPanel/presentation/widgets/OrderPanel.dart';

class ShowPizza extends StatelessWidget {
  const ShowPizza({super.key, required this.name, required this.img});
  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
          toolbarHeight: 110,
          leadingWidth: 90,
          leading: appbarButton(
              icon: CupertinoIcons.left_chevron,
              onTap: () {
                Navigator.pop(context);
              },
              dark: true,
              trasnparentBG: true),
          backgroundColor: Colors.grey.shade900,
          actions: [
            appbarButton(icon: CupertinoIcons.heart, onTap: () {}, dark: true)
          ]),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Stack(
            children: [
              Positioned(
                left: -constraints.maxWidth * .1,
                right: -constraints.maxWidth * .1,
                top: constraints.maxHeight * .6,
                child: Hero(
                  tag: "$img:tag",
                  child: ClipRect(
                    child: Image.asset(img, fit: BoxFit.fill),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: animationB(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
                    height: 160,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.transparent, Colors.grey.shade900],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                right: 40,
                left: 40,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(name,
                              style: TextStyle(
                                  fontSize: 65,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.grey.shade200,
                                  fontStyle: FontStyle.italic)),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8, 2, 25, 4),
                              child: Text(
                                "Price:",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey.shade400),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(15, 4, 25, 0),
                              child: Text(
                                "\$18.00",
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.amber),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                  bottom: 70,
                  left: 40,
                  right: 40,
                  child: customMyButton(
                      backgroundColor: Colors.amber.shade600,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderPanel(
                                    name: name,
                                    img: img,
                                  )),
                        );
                      },
                      style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                      title: 'GO TO MENU'))
            ],
          ),
        ),
      ),
    );
  }
}
