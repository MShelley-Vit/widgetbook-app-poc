import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_lib/ui_components_manager.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import './utilities/images.dart';

@widgetbook.UseCase(name: 'Default List', type: VGList)
Widget buildDefaultListUseCase(BuildContext context) {
  final VGAppTheme appTheme = Theme.of(context).extension<VGAppTheme>()!;
  final itemOneText = context.knobs.string(label: 'Item one text', initialValue: 'About <feature name>');
  final itemTwoText = context.knobs.string(label: 'Item two text', initialValue: 'How it works');
  final itemThreeText = context.knobs.string(label: 'Item three text', initialValue: 'How it works long text test , How it works long text test');
  final itemFourText = context.knobs.string(label: 'Item four text', initialValue: 'List item with icon');

  final showLeadingIcons = context.knobs.boolean(label: 'Show leading icons', initialValue: true);

    return Scaffold(
      backgroundColor: appTheme.colors.base100,
      body: Center(
        child: Column(
          children: [
            VGList(title: itemOneText, semanticsProperties: SemanticsProperties(label: itemOneText)),
            VGList(
              title: itemTwoText,
              onTap: () {},
              semanticsProperties: SemanticsProperties(label: itemTwoText)
            ),
            VGList(
              title: itemThreeText,
              semanticsProperties: SemanticsProperties(label: itemThreeText)
            ),
            VGList(
              title: itemFourText,
              semanticsProperties: SemanticsProperties(label: itemFourText),
              leading: showLeadingIcons ? SvgPicture.string(semanticsLabel: itemFourText,
                SVGRaw.google,
              ) : null,
            ),
          ],
        ),
      ),
    );
}

@widgetbook.UseCase(name: 'Text List', type: VGList)
Widget buildTextListUseCase(BuildContext context) {
  final VGAppTheme appTheme = Theme.of(context).extension<VGAppTheme>()!;
  final itemOneTitle = context.knobs.string(label: 'Item one title', initialValue: 'Website');
  final itemOneSubtitle = context.knobs.string(label: 'Item one subtitle', initialValue: 'www.vitality.co.uk');
  final itemTwoTitle = context.knobs.string(label: 'Item two title', initialValue: 'Contact number');
  final itemTwoSubtitle = context.knobs.string(label: 'Item two subtitle', initialValue: '0800-123-4567');
  final itemThreeTitle = context.knobs.string(label: 'Item three title', initialValue: 'Email');
  final itemThreeSubtitle = context.knobs.string(label: 'Item three subtitle', initialValue: 'email@gmail.com');

  final showLeadingIcons = context.knobs.boolean(label: 'Show leading icons', initialValue: true);
  final showSubtitles = context.knobs.boolean(label: 'Show subtitles', initialValue: true);

    return Scaffold(
      backgroundColor: appTheme.colors.base100,
      body: Center(
        child: Column(
          children: [
            VGList.textList(
              title: itemOneTitle,
              leading: showLeadingIcons ? SvgPicture.asset(
                Images.linkIcon,
                width: 24,
                height: 24,
              ) : null,
              subTitle: showSubtitles ? VGText(itemOneSubtitle) : null,
              semanticsProperties: SemanticsProperties(label: itemOneTitle),
              onTap: () {},
            ),
            VGList.textList(
              leading: showLeadingIcons ? SvgPicture.asset(
                Images.phoneIcon,
                width: 24,
                height: 24,
              ) : null,
              title: itemTwoTitle,
              subTitle: showSubtitles ? VGText(itemTwoSubtitle) : null,
              semanticsProperties: SemanticsProperties(label: itemTwoTitle),
              onTap: () {},
            ),
            VGList.textList(
              leading: showLeadingIcons ? SvgPicture.asset(
                Images.mailIcon,
                width: 24,
                height: 24,
              ) : null,
              title: itemThreeTitle,
              subTitle: showSubtitles ? VGText(itemThreeSubtitle) : null,
              semanticsProperties: SemanticsProperties(label: itemThreeTitle),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
}