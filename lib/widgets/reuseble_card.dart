import 'package:flutter/material.dart';

import '../constant.dart';

class ReusebleCard extends StatelessWidget {
  final Widget? child;
  ReusebleCard({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: kActiveCardColor, borderRadius: BorderRadius.circular(10)),
    );
  }
}
