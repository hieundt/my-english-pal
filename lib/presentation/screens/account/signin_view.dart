import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/data/services/firebase_auth_services.dart';
import 'package:myenglishpal_web/presentation/screens/account/background.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/footer.dart';
import 'package:myenglishpal_web/presentation/screens/account/components/header.dart';
import 'package:myenglishpal_web/presentation/widgets/app_button.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/routes.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';
import 'package:myenglishpal_web/utils.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SignInView extends StatefulWidget {
  const SignInView({
    super.key,
  });

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AccountViewBackGround(
        child: ResponsiveRowColumn(
          layout: ResponsiveRowColumnType.COLUMN,
          children: [
            //* Header
            ResponsiveRowColumnItem(
              columnFlex: 3,
              child: AccountViewHeader(
                title: Text(
                  'Welcome!',
                  style: AppTextStyle.bungee50,
                ),
                description: Text(
                  'Sign in to your account',
                  style: AppTextStyle.bungeeHairline20,
                ),
              ),
            ),
            //* Google sign in button
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
                onPressed: () => AuthService().googleSignin(),
              ),
            ),
            const ResponsiveRowColumnItem(
              rowFlex: 1,
              child: SizedBox(
                height: 30,
              ),
            ),

            const ResponsiveRowColumnItem(
              columnFlex: 1,
              child: SizedBox(
                height: 50,
              ),
            ),
            //* Footer
            ResponsiveRowColumnItem(
              columnFlex: 1,
              child: AccountViewFooter(
                leading: Text(
                  "Don't have an account?",
                  style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                      ? AppTextStyle.robotoMono10
                      : AppTextStyle.robotoMono15,
                ),
                trailing: AppButton(
                  layout: AppButtonType.textButton,
                  buttonTitle: Text(
                    'Create',
                    style: (ResponsiveWrapper.of(context).isSmallerThan(MOBILE))
                        ? AppTextStyle.robotoMono10
                            .copyWith(color: AppColors.darkBlueColor)
                        : AppTextStyle.robotoMono15
                            .copyWith(color: AppColors.darkBlueColor),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      signUpRoute,
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
