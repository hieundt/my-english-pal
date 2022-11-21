class SimulatorContentString {
  static final simulatorContentString = [
    SimulatorContentString(
      title: 'Normal mode',
      description: 'You are a beginner?\nTry this',
    ),
    SimulatorContentString(
      title: 'Hard mode',
      description: 'Too easy for you?\nTake on some challenges',
    ),
  ];

  String title;
  String description;

  SimulatorContentString({
    required this.title,
    required this.description,
  });
}
