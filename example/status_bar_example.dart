import 'package:flutter/material.dart';
import 'package:status_bar/status_bar.dart';

void main() {
  runApp(
    MaterialApp(
      /// Initialize
      home: StatusBarInitializer(
        child: Scaffold(
          /// Add StatusBar
          bottomSheet: StatusBar(),
          body: SafeArea(
            child: Column(
              children: [
                Hinter(msg: 'Hint for \'text3\'', child: Text('Some text 3')),
                SizedBox(height: 20),
                Hinter(msg: 'Hint for \'text2\'', child: Text('Some text 2')),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
