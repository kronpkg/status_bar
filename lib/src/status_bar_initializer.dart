import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'status_bar_controller.dart';

class StatusBarInitializer extends StatelessWidget {
  const StatusBarInitializer({Key? key, required this.child}) : super(key: key);

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<StatusBarController>(
      create: (context) => StatusBarController(),
      child: child,
    );
  }
}
