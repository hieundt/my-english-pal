import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_text_field.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            UserViewImages.headerImage,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Image.asset(
                AppLogo.myEnglishPalLogo,
                scale: 5,
              ),
              Text(
                'Welcome!',
                style: ralewayStyle.copyWith(
                  fontSize: 50,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                'Sign In to your account',
                style: ralewayStyle.copyWith(
                  fontSize: 20,
                  color: AppColors.greyColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                layout: AppTextFieldType.EMAIL,
              ),
              const SizedBox(
                height: 10,
              ),
              AppTextField(
                layout: AppTextFieldType.PASSWORD,
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                child: Text(
                  'Forgot password?',
                  style: ralewayStyle.copyWith(
                    fontSize: 15,
                    color: AppColors.blackColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.lightBlueColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      30,
                    ),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Sign In".toUpperCase(),
                  style: ralewayStyle.copyWith(
                    fontSize: 20,
                    color: AppColors.greyColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: ralewayStyle.copyWith(
                      fontSize: 15,
                      color: AppColors.greyColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create",
                      style: ralewayStyle.copyWith(
                        fontSize: 15,
                        color: AppColors.mainThemeColor,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
