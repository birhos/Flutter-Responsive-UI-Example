import 'package:flutter/material.dart';

import 'package:responsive_ui_example/app/homePage/widget/itemWidget.dart';

import 'package:responsive_ui_example/commonWidget/baseTypeLayout.dart';

import 'package:responsive_ui_example/others/styling.dart';
import 'package:responsive_ui_example/others/sizeConfig.dart';

class DesktopHomeLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(MyAppBarTheme.DesktopLandscapeHeight),
        child: Container(
          color: MyAppBarTheme.BackgroundColor,
          child: Material(
            elevation: MyAppBarTheme.Elevation,
            child: Padding(
              padding: EdgeInsets.only(
                top: SizeConfig.safeTop,
              ),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  // ************************** **************************
                  /// Başlık

                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Home Page",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.display1.copyWith(
                        color: MyAppBarTheme.TextColor,
                        fontSize: MyAppBarTheme.DesktopTextSize * 0.85,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            blurRadius: 4.0,
                            color: Colors.black.withOpacity(0.20),
                            offset: Offset(2.0, 2.0),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ************************** **************************
                  /// Menü

                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      color: Colors.transparent,
                      height: MyAppBarTheme.MobilePortraitHeight,
                      padding: EdgeInsets.only(
                        left: MyAppBarTheme.LeftPadding,
                        right: MyAppBarTheme.RightPadding,
                      ),
                      child: Icon(
                        Icons.menu,
                        color: MyAppBarTheme.IconColor,
                        size: MyAppBarTheme.DesktopIconSize * 0.85,
                        semanticLabel: "Menü",
                      ),
                    ),
                  ),

                  // ************************** **************************
                ],
              ),
            ),
          ),
        ),
      ),
      body: BaseTypeLayout(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              // ************************** **************************

              Center(
                child: Text(
                  "Desktop Landscape",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        color: Colors.white,
                        fontSize: 10.0 * SizeConfig.widthMultiplier,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),

              // ************************** **************************

              ListView(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.redAccent,
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.greenAccent,
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.blueAccent,
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.amberAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5 * SizeConfig.widthMultiplier,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.cyanAccent,
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: HomePageItemWidget(
                          backgroundColor: Colors.deepOrangeAccent,
                        ),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      SizedBox(
                        width: 2.5 * SizeConfig.widthMultiplier,
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 2.5 * SizeConfig.widthMultiplier +
                        SizeConfig.safeBottom,
                  ),
                ],
              ),

              // ************************** **************************
            ],
          ),
        ),
      ),
    );
  }
}
