import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:ui_lib/ui_components_manager.dart';
import './utilities/images.dart';

@widgetbook.UseCase(name: 'Primary', type: VGList)
Widget buildDefaultListUseCase(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VGList(title: "About <feature name>"),
          VGList(
            title: "How it works",
            onTap: () {},
          ),
          VGList(
              title:
              "How it works long text test , How it works long text test "),
          VGList(
            title: "Device Test",
            leading: SvgPicture.string(
              SVGRaw.google,
            ),
          ),
          VGList(
            title: "Apps and devices",
            leading: SvgPicture.asset(
              Images.leftIcon,
              width: 24,
              height: 24,
            ),
          ),
          Column(
            children: [
              VGList.textList(
                title: 'Website',
                leading: SvgPicture.asset(
                  Images.linkIcon,
                  width: 24,
                  height: 24,
                ),
                subTitle: VGText('www.sadag.org'),
                onTap: () {},
              ),
              VGList.textList(
                leading: SvgPicture.asset(
                  Images.phoneIcon,
                  width: 24,
                  height: 24,
                ),
                title: 'Contact number',
                subTitle: VGText('0800-12-13-14'),
                onTap: () {},
              ),
              VGList.textList(
                leading: SvgPicture.asset(
                  Images.mailIcon,
                  width: 24,
                  height: 24,
                ),
                title: 'Email',
                subTitle: VGText('email@gmail.com'),
                onTap: () {},
              ),
            ],
          ),
          VGList.textList(
            title: "Device Test",
            trailingText: 'On',
          ),
          VGList.textList(
            title: "Device Test",
            trailingText: 'Off',
          ),
        ],
      ),
    )
  );
}