import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:just_audio/just_audio.dart';

class LiveStreamState extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  final isPlayerReady = false.obs;
  final isPlaying = false.obs;

  @override
  Future<void> onInit() async {
    super.onInit();
    print("init-onInit");
    await audioPlayer
        .setAudioSource(AudioSource.uri(Uri.parse(
            "https://radio.hewadict.com/proxy/quranradio?mp=/stream")))
        .onError((error, stackTrace) {
      Fluttertoast.showToast(msg: "Error: $error");
      print(error);
      print(stackTrace);
      return null;
    });

    audioPlayer.playerStateStream.listen((event) {
      if (event.processingState == ProcessingState.ready) {
        isPlayerReady.value = true;
      }
    });

    audioPlayer.playingStream.listen((event) {
      print("playing: $event");
      if (event) {
        isPlaying.value = true;
      } else {
        isPlaying.value = false;
      }
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }
}
