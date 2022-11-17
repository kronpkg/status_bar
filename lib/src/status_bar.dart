import 'package:bottom_status_bar/src/status_bar_controller.dart';
import 'package:flutter/material.dart';

class StatusBar extends StatelessWidget {
  const StatusBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
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
