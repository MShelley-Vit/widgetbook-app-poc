// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:widgetbook/widgetbook.dart' as _i1;
import 'package:widgetbook_test/button.dart' as _i2;
import 'package:widgetbook_test/list.dart' as _i3;

final directories = <_i1.WidgetbookNode>[
  _i1.WidgetbookFolder(
    name: 'widgets',
    children: [
      _i1.WidgetbookComponent(
        name: 'VGButton',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Outlined',
            builder: _i2.buildOutlinedButtonUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Primary',
            builder: _i2.buildDefaultButtonUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Secondary',
            builder: _i2.buildSecondaryButtonUseCase,
          ),
        ],
      ),
      _i1.WidgetbookComponent(
        name: 'VGList',
        useCases: [
          _i1.WidgetbookUseCase(
            name: 'Default List',
            builder: _i3.buildDefaultListUseCase,
          ),
          _i1.WidgetbookUseCase(
            name: 'Text List',
            builder: _i3.buildTextListUseCase,
          ),
        ],
      ),
    ],
  )
];
