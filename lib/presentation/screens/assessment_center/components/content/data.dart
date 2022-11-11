class AssessmentCenterContentData {
  static final assessmentCenterContentData = [
    AssessmentCenterContentData(
      title: 'Normal mode',
      description: 'You are a beginner?\nTry this',
    ),
    AssessmentCenterContentData(
      title: 'Hard mode',
      description: 'Too easy for you?\nTake on some challenges',
    ),
  ];

  String title;
  String description;

  AssessmentCenterContentData({
    required this.title,
    required this.description,
  });
}
