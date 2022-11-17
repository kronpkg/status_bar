import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class StatusBarController extends ChangeNotifier {
  static final _statusController = StatusBarController._internal();
  factory StatusBarController() {
    return _statusController;
  }

  StatusBarController._internal();

  factory StatusBarController.read(BuildContext context) {
    return context.read<StatusBarController>();
  }

  factory StatusBarController.watch(BuildContext context) {
    return context.watch<StatusBarController>();
  }

  String _text = '';
  StatusMsgType _type = StatusMsgType.common;

  void setMsg({
    required String text,
    StatusMsgType type = StatusMsgType.common,
  }) {
    _text = text;
    _type = type;
    notifyListeners();
  }

  void setTimerMSg({
    Duration duration = const Duration(seconds: 3),
    required String text,
    StatusMsgType type = StatusMsgType.common,
  }) async {
    setMsg(text: text, type: type);
    await Future.delayed(duration);
    removeMsg();
  }

  void removeMsg() {
    _text = '';
    _type = StatusMsgType.common;
    notifyListeners();
  }

  Text get message => Text(
        _text,
        style: TextStyle(color: _type.color),
      );
}

enum StatusMsgType {
  common(Colors.black),
  attention(Colors.redAccent),
  info(Colors.blue);

  const StatusMsgType(this.color);
  final Color color;
}
