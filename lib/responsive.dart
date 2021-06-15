import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  final Widget tablet;

  Responsive(
      {@required this.desktop, @required this.mobile, @required this.tablet});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, contraints) {
      if (contraints.maxWidth > 1100) {
        return this.desktop;
      } else if (contraints.maxWidth > 650) {
        return this.tablet;
      } else
        return this.mobile;
    });
  }
}
