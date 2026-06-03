import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:ui_lib/ui_components_manager.dart';

@widgetbook.UseCase(name: 'Primary', type: VGButton)
Widget buildDefaultButtonUseCase(BuildContext context) {
  final buttonText = context.knobs.string(label: 'Button text', initialValue: 'Button');
  final showLeadingIcon = context.knobs.boolean(label: 'Show leading icon', initialValue: false);
  final showTrailingIcon = context.knobs.boolean(label: 'Show trailing icon', initialValue: false);
  final buttonSize = context.knobs.list<String>(
    label: 'Size',
    options: ['Small', 'Large', 'Full Width'],
    initialOption: 'Small'
  );
  final showDisabledState = context.knobs.boolean(label: 'Show disabled state', initialValue: false);

  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: VGButton.primary(
        buttonText,
        leadingIcon: showLeadingIcon ? Icons.chevron_left_sharp : null,
        trailingIcon: showTrailingIcon ? Icons.add : null,
        onTap: showDisabledState ? null : () {},
        buttonSize: buttonSize == 'Small' ? VGButtonSize.small : buttonSize == 'Large' ? VGButtonSize.large : null,
        fullWidth: buttonSize == 'Full Width' ? true : false,
      )
    )
  );
}

@widgetbook.UseCase(name: 'Secondary', type: VGButton)
Widget buildSecondaryButtonUseCase(BuildContext context) {
  final buttonText = context.knobs.string(label: 'Button text', initialValue: 'Button');
  final showLeadingIcon = context.knobs.boolean(label: 'Show leading icon', initialValue: false);
  final showTrailingIcon = context.knobs.boolean(label: 'Show trailing icon', initialValue: false);
  final buttonSize = context.knobs.list<String>(
    label: 'Size',
    options: ['Small', 'Large', 'Full Width'],
    initialOption: 'Small'
  );
  final showDisabledState = context.knobs.boolean(label: 'Show disabled state', initialValue: false);

  return Scaffold(
    backgroundColor: Colors.grey,
    body: Center(
      child: VGButton.secondary(
        buttonText,
        leadingIcon: showLeadingIcon ? Icons.chevron_left_sharp : null,
        trailingIcon: showTrailingIcon ? Icons.add : null,
        onTap: showDisabledState ? null : () {},
        buttonSize: buttonSize == 'Small' ? VGButtonSize.small : buttonSize == 'Large' ? VGButtonSize.large : null,
        fullWidth: buttonSize == 'Full Width' ? true : false,
      )
    )
  );
}

@widgetbook.UseCase(name: 'Outlined', type: VGButton)
Widget buildOutlinedButtonUseCase(BuildContext context) {
  final buttonText = context.knobs.string(label: 'Button text', initialValue: 'Button');
  final showLeadingIcon = context.knobs.boolean(label: 'Show leading icon', initialValue: false);
  final showTrailingIcon = context.knobs.boolean(label: 'ShowtTrailing icon', initialValue: false);
  final buttonSize = context.knobs.list<String>(
    label: 'Size',
    options: ['Small', 'Large', 'Full Width'],
    initialOption: 'Small'
  );
  final showDisabledState = context.knobs.boolean(label: 'Show disabled state', initialValue: false);

  return Scaffold(
    backgroundColor: Colors.white,
    body: Center(
      child: VGButton.outlined(
        buttonText,
        leadingIcon: showLeadingIcon ? Icons.chevron_left_sharp : null,
        trailingIcon: showTrailingIcon ? Icons.add : null,
        onTap: showDisabledState ? null : () {},
        buttonSize: buttonSize == 'Small' ? VGButtonSize.small : buttonSize == 'Large' ? VGButtonSize.large : null,
        fullWidth: buttonSize == 'Full Width' ? true : false,
      )
    )
  );
}