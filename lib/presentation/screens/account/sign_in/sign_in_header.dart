import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveVisibility(
      hiddenWhen: const [
        Condition.smallerThan(name: TABLET),
      ],
      child: Container(
        height: MediaQuery.of(context).size.height,
        color: AppColors.mainThemeColor,
        child: ResponsiveRowColumn(
          rowMainAxisAlignment: MainAxisAlignment.center,
          layout: ResponsiveRowColumnType.ROW,
          children: [
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Image.asset(
                scale: ResponsiveValue(
                  context,
                  defaultValue: 3.0,
                  valueWhen: [
                    const Condition.smallerThan(
                      name: DESKTOP,
                      value: 5.0,
                    )
                  ],
                ).value,
                AppLogo.myEnglishPalLogo,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: Text(
                'Sign In\nTo Your Account',
                style: ralewayStyle.copyWith(
                  fontSize: ResponsiveValue(
                    context,
                    defaultValue: 40.0,
                    valueWhen: [
                      const Condition.smallerThan(
                        name: DESKTOP,
                        value: 25.0,
                      ),
                    ],
                  ).value,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
