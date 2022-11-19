class SimulatorContentData {
  static final assessmentCenterContentData = [
    SimulatorContentData(
      title: 'Normal mode',
      description: 'You are a beginner?\nTry this',
    ),
    SimulatorContentData(
      title: 'Hard mode',
      description: 'Too easy for you?\nTake on some challenges',
    ),
  ];

  String title;
  String description;

  SimulatorContentData({
    required this.title,
    required this.description,
  });
}
