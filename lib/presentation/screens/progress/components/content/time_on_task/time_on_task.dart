import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProgressTimeOnTask extends StatelessWidget {
  const ProgressTimeOnTask({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 350,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 50.0,
        shadowColor: Colors.grey[900],
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(
                CupertinoIcons.hourglass,
                color: Colors.brown[300],
                size: 100,
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Text(
                'Time on task  11:35 ',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
