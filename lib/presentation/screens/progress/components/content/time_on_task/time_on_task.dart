import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressTimeOnTask extends StatelessWidget {
  const ProgressTimeOnTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 150,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                CupertinoIcons.hourglass,
                color: Colors.brown[300],
                size: 50,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Time on task',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
