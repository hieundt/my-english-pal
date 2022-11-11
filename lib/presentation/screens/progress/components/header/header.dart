import 'package:flutter/material.dart';

class ProgressHeader extends StatelessWidget {
  const ProgressHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.lightBlue[100],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 50.0,
        shadowColor: Colors.grey[900],
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'This Is Your Progress',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 100.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
