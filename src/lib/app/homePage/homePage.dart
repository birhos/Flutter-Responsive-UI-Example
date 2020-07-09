import 'package:flutter/material.dart';

import 'package:responsive_ui_example/app/homePage/mobile/mobileHomePortrait.dart';
import 'package:responsive_ui_example/app/homePage/mobile/mobileHomeLandscape.dart';
import 'package:responsive_ui_example/app/homePage/tablet/tabletHomeLandscape.dart';
import 'package:responsive_ui_example/app/homePage/tablet/tabletHomePortrait.dart';
import 'package:responsive_ui_example/app/homePage/desktop/desktopHomePortrait.dart';
import 'package:responsive_ui_example/app/homePage/desktop/desktopHomeLandscape.dart';

import 'package:responsive_ui_example/others/screenTypeLayout.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      watch: OrientationLayoutBuilder(
        portrait: (BuildContext context) => Container(),
        landscape: (BuildContext context) => Container(),
      ),
      mobile: OrientationLayoutBuilder(
        portrait: (BuildContext context) => MobileHomePortrait(),
        landscape: (BuildContext context) => MobileHomeLandscape(),
      ),
      tablet: OrientationLayoutBuilder(
        portrait: (BuildContext context) => TabletHomePortrait(),
        landscape: (BuildContext context) => TabletHomeLandscape(),
      ),
      desktop: OrientationLayoutBuilder(
        portrait: (BuildContext context) => DesktopHomePortrait(),
        landscape: (BuildContext context) => DesktopHomeLandscape(),
      ),
    );
  }
}
