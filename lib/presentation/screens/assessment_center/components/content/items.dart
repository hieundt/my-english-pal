import 'package:flutter/material.dart';
import 'package:myenglishpal_web/presentation/screens/assessment_center/components/content/data.dart';

class AssessmentCenterContentItem extends StatelessWidget {
  final AssessmentCenterContentData assessmentCenterContentData;
  const AssessmentCenterContentItem({
    super.key,
    required this.assessmentCenterContentData,
  });

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                assessmentCenterContentData.title,
                style: const TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w900,
                  fontSize: 80.0,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                assessmentCenterContentData.description,
                style: const TextStyle(
                  color: Colors.black54,
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
