import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/widgets/app_linnear_indicator.dart';

class ProgressTaskCompletion extends StatelessWidget {
  const ProgressTaskCompletion({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLinnearIndicator(
      title: 'Task completetion',
      icon: CupertinoIcons.rocket_fill,
      leadingColor: Colors.yellow[100],
      iconColor: Colors.orange[900],
    );
  }
}
