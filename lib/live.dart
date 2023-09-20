import 'package:audioplayers/audioplayers.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TrackProgress extends StatelessWidget {
  final Duration currentPosition;
  final Duration totalDuration;

  TrackProgress({required this.currentPosition, required this.totalDuration});

  String formatDuration(Duration duration) {
    final mins = duration.inMinutes.remainder(60).toString().padLeft(2, '0');
    final secs = duration.inSeconds.remainder(60).toString().padLeft(2, '0');
    return '$mins:$secs';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 3.0, color: Color(0xFF4C35AE)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            formatDuration(currentPosition),
            style: const TextStyle(color: Colors.white),
          ),
          Text(
            formatDuration(totalDuration),
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class LiveStream extends GetView<LiveStreamState> {
  @override
  Widget build(BuildContext context) {
    print("isReady: ${isPlayerReady.value}");
    print("isPlaying: ${isPlaying.value}");
    Obx(() => (!isPlayerReady.value)
        ? Scaffold(
            body: Image.asset(
              'assets/bg5.jpeg',
              fit: BoxFit.cover,
            ),
          )
        : Container());
    Obx(() => (isPlaying.value)
        ? Scaffold(
            body: Image.asset(
              'assets/bg5.jpeg',
              fit: BoxFit.cover,
            ),
          )
        : Container());

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/bg5.jpeg',
              fit: BoxFit.cover,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.5),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/white-logo.png',
                      width: 300.0,
                      height: 200.0,
                    ),
                    Column(
                      children: [
                        TrackProgress(
                          currentPosition: currentPosition.value,
                          totalDuration: totalDuration.value,
                        ),
                        Container(
                          color: const Color(0xFF4C35AE),
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(
                              isPlaying.value ? Icons.pause : Icons.play_arrow,
                              size: 35.0,
                            ),
                            onPressed: handlePlayPress,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AudioPlayer audioPlayer = AudioPlayer();

final isPlayerReady = false.obs;
final isPlaying = false.obs;
final totalDuration = const Duration().obs;
final currentPosition = const Duration().obs;
final connectivityResult = ConnectivityResult.none.obs;

Future<void> handlePlayPress() async {
  print("isPlaying: ${isPlaying.value}");
  if (isPlaying.value) {
    await audioPlayer.pause();
    isPlaying.value = false;
  } else {
    await audioPlayer.play(UrlSource('http://radio.hewadict.com:8004'));
    print("playing"); // Replace with your audio file path or URL
    isPlaying.value = true;
  }
}

class LiveStreamState extends GetxController {
  @override
  void onInit() {
    super.onInit();
    isPlayerReady.value = false;
    isPlaying.value = false;
    connectivityResult.value = ConnectivityResult.none;
    totalDuration.value = const Duration();
    currentPosition.value = const Duration();

    initPlayer();
    checkConnectivity();
  }

  Future<void> initPlayer() async {
    print("init");
    audioPlayer.onDurationChanged.listen((Duration duration) {
      totalDuration.value = duration;
    });

    audioPlayer.onPositionChanged.listen((Duration position) {
      currentPosition.value = position;
    });

    isPlayerReady.value = true;
  }

  Future<void> checkConnectivity() async {
    final result = await Connectivity().checkConnectivity();
    print("conn: ${result}");
    connectivityResult.value = result;
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
