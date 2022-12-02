import 'package:flutter/cupertino.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/images/app_images.dart';

class AccountViewBackGround extends StatelessWidget {
  final Widget child;
  const AccountViewBackGround({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(
            fit: BoxFit.cover,
            UserViewImages.backgroundImage,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: AppColors.lightBlueColor,
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          padding: const EdgeInsets.all(
            20,
          ),
          width: 600,
          height: 550,
          child: child,
        ),
      ],
    );
  }
}
