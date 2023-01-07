import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myenglishpal_web/data/services/firebase_auth_services.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:myenglishpal_web/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_framework/responsive_row_column.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({
    super.key,
  });

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: AccountViewHeader(
                title: Text(
                  'Hey!',
                  style: AppTextStyle.bungee50,
                ),
                description: Text(
                  'Let\'s create your account',
                  style: AppTextStyle.bungeeHairline20,
                ),
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 1,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonLeading: Image.asset(
                  scale: 15,
                  UserViewImages.googleImage,
                ),
                buttonTitle: Text(
                  'Continue with Google    ',
                  style: AppTextStyle.bungee15,
                ),
              ),
            ),
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                height: 30,
              ),
            ),
            ResponsiveRowColumnItem(
              rowFlex: 2,
              child: AppButton(
                layout: AppButtonType.floatingActionButton,
                buttonLeading: Image.asset(
                  scale: 15,
                  UserViewImages.facebookImage,
                ),
                buttonTitle: Text(
                  'Continue with Facebook',
                  style: AppTextStyle.bungee15,
                ),
              ),
            ),
            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 50,
              ),
            ),
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AccountViewFooter(
                leading: Text(
                  "Already have an account? ",
                  style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                      ? AppTextStyle.robotoMono10
                      : AppTextStyle.robotoMono15,
                ),
                trailing: AppButton(
                  layout: AppButtonType.textButton,
                  buttonTitle: Text(
                    'Sign in',
                    style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                        ? AppTextStyle.robotoMono10
                            .copyWith(color: AppColors.darkBlueColor)
                        : AppTextStyle.robotoMono15
                            .copyWith(color: AppColors.darkBlueColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      navigateControllerRoute,
                      (route) => false,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
