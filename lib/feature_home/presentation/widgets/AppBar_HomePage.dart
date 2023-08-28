import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pizza_quick_app/Core/utils/Animation.dart';
import 'package:pizza_quick_app/Core/widgets/AppbarBtn.dart';

AppBar appbarHomePage(BuildContext context) {
  return AppBar(
    toolbarHeight: 110,
    title: animationB(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fast Food ,',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.w300)),
            Text('Fast Delivery',
                style: Theme.of(context).textTheme.headlineSmall),
          ],
        ),
      ),
    ),
    actions: [appbarButton(icon: CupertinoIcons.person, onTap: () {

showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('info'),
          content: const Text('Developer : Hosivay\ninstagram: @hosivay\nGithub: @hosivay\nTelegram: @hosivay'),
          actions: <Widget>[
           
            TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

    })],
  );
}
