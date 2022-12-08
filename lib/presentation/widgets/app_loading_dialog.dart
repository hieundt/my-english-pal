import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: AppColors.transparentColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SpinKitPouringHourGlassRefined(
            strokeWidth: 5,
            size: 100,
            color: AppColors.mainThemeColor,
          ),
          const SizedBox(height: 10),
          SpinKitPumpingHeart(
            size: 100,
            itemBuilder: (context, index) {
              const color = AppColors.blackColor;
              return Text(
                'Loading',
                style: AppTextStyle.bungee20.copyWith(color: color),
              );
            },
          )
        ],
      ),
    );
  }
}
