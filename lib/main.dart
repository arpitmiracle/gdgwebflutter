import 'package:custom_elements/custom_elements.dart';
import 'package:flutter/material.dart';
import 'package:gdgwebflutter/ui/block_wrapper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'components/components.dart';
import 'pages/home_page.dart';
import 'ui/blocks.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context,orientation,deviceType) {
        return MaterialApp(
          builder: (context, widget) => ResponsiveWrapper.builder(
              ClampingScrollWrapper.builder(context, widget!),
              defaultScale: true,
              minWidth: 480,
              defaultName: MOBILE,
              breakpoints: [
                const ResponsiveBreakpoint.autoScale(480, name: MOBILE),
                const ResponsiveBreakpoint.resize(600, name: MOBILE),
                const ResponsiveBreakpoint.resize(850, name: TABLET),
                const ResponsiveBreakpoint.resize(1080, name: DESKTOP),
              ],
              background: Container(color: background)),
          home:  HomePage(),
          debugShowCheckedModeBanner: false,
        );
      }
    );
  }
}

//
// List<Widget> blocks = [
//   const BlockWrapper(Features()),
//   const BlockWrapper(FastDevelopment()),
//   const BlockWrapper(BeautifulUI()),
//   const BlockWrapper(NativePerformance()),
//   const BlockWrapper(LearnFromDevelopers()),
//   const BlockWrapper(WhoUsesFlutter()),
//   const BlockWrapper(FlutterNewsRow()),
//   const BlockWrapper(InstallFlutter()),
//   const Footer(),
// ];

// Disabled codelab block for performance.
//              ResponsiveVisibility(
//                hiddenWhen: [Condition.smallerThan(name: DESKTOP)],
//                child: ResponsiveConstraints(
//                    constraintsWhen: blockWidthConstraints,
//                    child: FlutterCodelab()),
//              ),
