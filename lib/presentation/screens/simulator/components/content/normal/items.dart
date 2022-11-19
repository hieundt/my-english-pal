import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/simulator/components/content/data.dart';

class SimulatorContentNormalItem extends StatelessWidget {
  final SimulatorContentData assessmentCenterContentData;
  const SimulatorContentNormalItem({
    super.key,
    required this.assessmentCenterContentData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.greenAccent[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                assessmentCenterContentData.title,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.w600,
                  fontSize: 80.0,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                assessmentCenterContentData.description,
                style: TextStyle(
                  color: Colors.grey[200],
                  fontWeight: FontWeight.w400,
                  fontSize: 40.0,
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
