import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';
import 'package:ui_lib/ui_components_manager.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  VGApplicationTheme.setUp(null, null, null); 

  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appBuilder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: VGAppTheme.create(),
          home: child,
        );
      },
      directories: directories,
      addons: [
        ViewportAddon([
          ViewportData(name: 'iPhone 17', width: 402, height: 874, pixelRatio: 3, platform: TargetPlatform.iOS),
          ViewportData(name: 'iPhone 16', width: 393, height: 852, pixelRatio: 3, platform: TargetPlatform.iOS),
          ViewportData(name: 'Galaxy S25', width: 360, height: 780, pixelRatio: 3, platform: TargetPlatform.android),
          ViewportData(name: 'Galaxy S25 Ultra', width: 412, height: 915, pixelRatio: 3, platform: TargetPlatform.android),
          ViewportData(name: 'iPad Pro', width: 834, height: 1210, pixelRatio: 2, platform: TargetPlatform.iOS),
          ViewportData(name: 'iPad Mini', width: 744, height: 1133, pixelRatio: 2, platform: TargetPlatform.iOS),
          ViewportData(name: 'Galaxy Tab S9', width: 712, height: 1138, pixelRatio: 2.5, platform: TargetPlatform.android),
        ]),
        InspectorAddon(),
        TextScaleAddon(),
        BuilderAddon(
          name: 'Accessibility',
          builder: (context, child) => AccessibilityTools(child: child)
        ),
      ],
    );
  }
}
