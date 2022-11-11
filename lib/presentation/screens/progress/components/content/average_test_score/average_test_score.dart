import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressAverageTestScore extends StatelessWidget {
  const ProgressAverageTestScore({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              CupertinoIcons.flag,
              color: Colors.lightBlueAccent[100],
              size: 100,
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text(
              'Average test score',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
