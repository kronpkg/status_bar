import 'package:flutter/material.dart';

import 'status_bar_controller.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
    this.height = 30,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      // margin: EdgeInsets.only(top: 6),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: Colors.blueGrey.withAlpha(20),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0),
            blurRadius: 3.0,
            blurStyle: BlurStyle.outer,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Row(
          children: [
            StatusBarController.watch(context).message,
          ],
        ),
      ),
    );
  }
}
