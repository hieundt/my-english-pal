import 'package:flutter/material.dart';

class SimulatorHeader extends StatelessWidget {
  const SimulatorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.blueGrey[50],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        elevation: 50.0,
        shadowColor: Colors.grey[900],
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'TOEIC Exam Simulator',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w900,
              fontSize: 70,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
