import 'package:flutter/material.dart';

import 'status_bar_controller.dart';

class Hinter extends StatelessWidget {
  const Hinter({
    Key? key,
    required this.child,
    required this.msg,
    this.msgType = StatusMsgType.common,
  }) : super(key: key);

  final String msg;
  final StatusMsgType msgType;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => StatusBarController.read(context).setMsg(
        text: msg,
        type: msgType,
      ),
      onExit: (event) => StatusBarController.read(context).removeMsg(),
      child: child,
    );
  }
}
