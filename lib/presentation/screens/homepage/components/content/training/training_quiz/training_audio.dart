import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TrainingQuizAudio extends StatefulWidget {
  const TrainingQuizAudio({
    super.key,
    required this.url,
  });

  final String url;

  @override
  State<TrainingQuizAudio> createState() => _TrainingQuizAudioState();
}

class _TrainingQuizAudioState extends State<TrainingQuizAudio> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  @override
  void initState() {
    super.initState();

    setAudio();
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    audioPlayer.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 20,
          child: IconButton(
            icon: Icon(
              isPlaying ? Icons.pause : Icons.play_arrow,
            ),
            iconSize: 15,
            onPressed: () async {
              if (isPlaying) {
                await audioPlayer.pause();
              } else {
                String url = widget.url;
                await audioPlayer.play(UrlSource(url));
              }
            },
          ),
        ),
        Slider(
          min: 0,
          max: duration.inSeconds.toDouble(),
          value: position.inSeconds.toDouble(),
          onChanged: (value) {
            final position = Duration(seconds: value.toInt());
            audioPlayer.seek(position);
            audioPlayer.resume();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(formatTime(position.inSeconds)),
              const Text('/'),
              Text(formatTime((duration.inSeconds))),
            ],
          ),
        ),
      ],
    );
  }

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  Future setAudio() async {
    audioPlayer.setReleaseMode(ReleaseMode.loop);

    audioPlayer.setSourceUrl(widget.url);
  }
}
