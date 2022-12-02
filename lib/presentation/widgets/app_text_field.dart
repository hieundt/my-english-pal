// ignore_for_file: constant_identifier_names
import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/rsc/colors/app_colors.dart';
import 'package:myenglishpal_web/rsc/styles/app_styles.dart';

enum AppTextFieldType {
  EMAIL,
  PASSWORD,
}

class AppTextFormField extends StatefulWidget {
  final AppTextFieldType layout;
  final String? hintText;
  final TextEditingController? controller;

  get isEmail => layout == AppTextFieldType.EMAIL;
  get isPassword => layout == AppTextFieldType.PASSWORD;

  factory AppTextFormField({
    required AppTextFieldType layout,
    required String hintText,
    TextEditingController? controller,
  }) {
    return AppTextFormField._internal(
      layout: layout,
      hintText: hintText,
      controller: controller,
    );
  }

  const AppTextFormField._internal({
    required this.layout,
    required this.hintText,
    this.controller,
  });

  @override
  State<AppTextFormField> createState() => _AppTextFormFieldState();
}

class _AppTextFormFieldState extends State<AppTextFormField> {
  bool _obscureText = true;
  get isEmail => widget.layout == AppTextFieldType.EMAIL;
  get isPassword => widget.layout == AppTextFieldType.PASSWORD;

  @override
  Widget build(
    BuildContext context,
  ) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.emailAddress,
      enableSuggestions: false,
      autocorrect: false,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: (widget.layout == AppTextFieldType.EMAIL)
          ? (value) => value != null && !EmailValidator.validate(value)
              ? 'Enter a valid email'
              : null
          : (value) => value != null && value.length < 6
              ? 'Password must have at least 6 characters'
              : null,
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
                  _obscureText ? CupertinoIcons.eye_slash : CupertinoIcons.eye,
                ),
              ),
        filled: true,
        fillColor: AppColors.whiteColor,
        hintText: widget.hintText,
        hintStyle: AppTextStyle.appNormalText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            8,
          ),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 0,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
      ),
    );
  }
}
