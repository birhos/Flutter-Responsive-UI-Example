import 'package:flutter/material.dart';
import 'package:responsive_ui_example/others/sizeConfig.dart';

class BaseTypeLayout extends StatelessWidget {
  final Widget child;

  const BaseTypeLayout({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.isPortrait) {
      return Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child: child,
      );
    }

    return Container(
      width: SizeConfig.screenHeight,
      height: SizeConfig.screenWidth,
      child: child,
    );
  }
}
