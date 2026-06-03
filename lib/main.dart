import 'package:flutter/material.dart';
import 'package:ui_lib/ui_components_manager.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'main.directories.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Your existing configuration step
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
      // addons: [],
    );
  }
}
