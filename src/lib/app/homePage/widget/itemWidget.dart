import 'package:flutter/material.dart';

import 'package:responsive_ui_example/others/sizeConfig.dart';

class HomePageItemWidget extends StatelessWidget {
  final Color backgroundColor;

  const HomePageItemWidget({
    Key key,
    @required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25.0 * SizeConfig.widthMultiplier,
      color: backgroundColor,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.star,
              color: Colors.white.withOpacity(0.80),
              size: 5.0 * SizeConfig.widthMultiplier,
            ),
          ),
          Positioned(
            top: 0.0,
            right: 0.0,
            child: Icon(
              Icons.star,
              color: Colors.white.withOpacity(0.50),
              size: 2.0 * SizeConfig.widthMultiplier,
            ),
          ),
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Icon(
              Icons.star,
              color: Colors.white.withOpacity(0.50),
              size: 2.0 * SizeConfig.widthMultiplier,
            ),
          ),
        ],
      ),
    );
  }
}
