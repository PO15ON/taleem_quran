import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'live_controller.dart';

class LiveStream extends StatelessWidget {
  LiveStream({Key? key}) : super(key: key);
  final controller = Get.put(LiveStreamState());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Get.close(1),
            icon: Icon(Icons.arrow_back),
          ),
        ),
        body: Stack(
          children: [
            // Background Image with Opacity
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(
                    0.2), // Adjust opacity by changing the value (0.5 for 50% opacity)
                BlendMode.darken,
              ),
              child: Image.asset(
                'assets/bg5.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),

            // Overlay Container with SafeArea
            Container(
              padding: EdgeInsets.only(top: 32, bottom: 256),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  // App Logo
                  Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/white-logo.png',
                      width: 300.0,
                      height: 200.0,
                    ),
                  ),

                  // Play/Pause Button
                  Obx(
                    () => Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(top: 20.0),
                        width: 100.0, // Adjust the width to make it circular
                        height: 100.0, // Adjust the height to make it circular
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(
                              0xFF4C35AE), // Background color for the circular button
                        ),
                        child: IconButton(
                          icon: Icon(
                            controller.isPlaying.value
                                ? Icons.pause
                                : Icons.play_arrow,
                            size: 48.0,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // Handle play button press
                            handlePlayPress();
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  handlePlayPress() {
    if (controller.audioPlayer.playing) {
      controller.audioPlayer.pause();
    } else {
      controller.audioPlayer.play();
    }
  }
}
