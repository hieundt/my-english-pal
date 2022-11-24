// ignore_for_file: constant_identifier_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

enum AppTextFieldType {
  EMAIL,
  PASSWORD,
}

class AppTextField extends StatefulWidget {
  final AppTextFieldType layout;
  final String? hintText;

  get isEmail => layout == AppTextFieldType.EMAIL;
  get isPassword => layout == AppTextFieldType.PASSWORD;

  factory AppTextField({
    required AppTextFieldType layout,
    required String hintText,
  }) {
    return AppTextField._internal(
      layout: layout,
      hintText: hintText,
    );
  }

  const AppTextField._internal({
    required this.layout,
    required this.hintText,
  });

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool _obscureText = true;
  get isEmail => widget.layout == AppTextFieldType.EMAIL;
  get isPassword => widget.layout == AppTextFieldType.PASSWORD;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            spreadRadius: 7,
            offset: const Offset(
              1,
              1,
            ),
            color: AppColors.greyColor.withOpacity(
              0.2,
            ),
          ),
        ],
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        enableSuggestions: false,
        autocorrect: false,
        obscureText: (widget.layout == AppTextFieldType.EMAIL)
            ? !_obscureText
            : _obscureText,
        decoration: InputDecoration(
          prefixIcon: (widget.layout == AppTextFieldType.EMAIL)
              ? const Icon(
                  CupertinoIcons.mail,
                )
              : const Icon(
                  CupertinoIcons.lock,
                ),
          suffixIcon: (widget.layout == AppTextFieldType.EMAIL)
              ? null
              : IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                    _obscureText
                        ? CupertinoIcons.eye_slash
                        : CupertinoIcons.eye,
                  ),
                ),
          hintText: widget.hintText,
          hintStyle: ralewayStyle.copyWith(
            fontSize: 15,
            color: AppColors.blackTextColor,
            fontWeight: FontWeight.w100,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
            borderSide: const BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
            borderSide: const BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
        ),
      ),
    );
  }
}
