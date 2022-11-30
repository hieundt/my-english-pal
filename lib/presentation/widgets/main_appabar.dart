// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
// import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

// class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final Widget leadingIconButton;
//   final List<Widget> actions;
//   final Color? backgroundColor;
//   final void Function()? onPressed;
//   const MainAppBar({
//     super.key,
//     required this.title,
//     required this.leadingIconButton,
//     required this.actions,
//     this.backgroundColor = AppColors.mainThemeColor,
//     this.onPressed,
//   });

//   @override
//   Size get preferredSize => const Size(
//         double.maxFinite,
//         80,
//       );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Container(
//         height: 70,
//         padding: const EdgeInsets.all(
//           20,
//         ),
//         decoration: BoxDecoration(
//           color: backgroundColor,
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 leadingIconButton,
//                 const SizedBox(
//                   width: 20,
//                 ),
//                 Text(
//                   title,
//                   style: ralewayStyle.copyWith(
//                     fontSize: 20,
//                     color: AppColors.greyTextColor,
//                     fontWeight: FontWeight.w900,
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: actions,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
