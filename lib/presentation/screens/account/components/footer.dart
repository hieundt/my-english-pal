import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';

import 'package:responsive_framework/responsive_framework.dart';

class AccountViewFooter extends StatelessWidget {
  final Widget leading;
  final AppButton trailing;

  factory AccountViewFooter({
    required Widget leading,
    required AppButton trailing,
  }) {
    return AccountViewFooter._internal(
      leading: leading,
      trailing: trailing,
    );
  }

  const AccountViewFooter._internal({
    required this.leading,
    required this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveRowColumn(
      rowMainAxisAlignment: MainAxisAlignment.center,
      layout: ResponsiveRowColumnType.ROW,
      children: [
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: leading,
        ),
        ResponsiveRowColumnItem(
          rowFlex: 1,
          child: trailing,
        ),
      ],
    );
  }
}
