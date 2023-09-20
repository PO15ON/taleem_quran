import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutLearning extends StatelessWidget {
  final VoidCallback onPress;

  AboutLearning({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4C35AE),
        title: const Text(
          'Ø¯ Ø²Ø¯Ù‡ Ú©Ú“Û Ø¨Ø±Ø®Ù‡',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        actions: [
          IconButton(
            onPressed: onPress,
            icon: const Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ø¯ Ø²Ø¯Ù‡ Ú©Ú“Û Ø¨Ø±Ø®Ù‡:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('(Ø¯ Ø¯ÛŒÙ† Ø²Ø¯Ù‡ Ú©Ú“Ù‡)'),
              const Text('Û±: Ø¹Ù‚Ø§ÛŒØ¯'),
              InkWell(
                onTap: () {
                  launch(
                    'https://www.youtube.com/playlist?list=PLKa_-tysL9bxE2Y8xeS0xr1c-CvGBJTUT',
                  );
                },
                child: const Text(
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxE2Y8xeS0xr1c-CvGBJTUT',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Text('Û²: Ø§ÙˆØ¯Ø³|Ø·Ù‡Ø§Ø±Øª'),
              InkWell(
                onTap: () {
                  launch(
                    'https://www.youtube.com/playlist?list=PLKa_-tysL9bxKdVs4qpz6f0qoSrJ70Gim',
                  );
                },
                child: const Text(
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxKdVs4qpz6f0qoSrJ70Gim',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Text('Û³: Ù„Ù…ÙˆÙ†Ú|Ù†Ù…Ø§Ø²'),
              InkWell(
                onTap: () {
                  launch(
                    'https://www.youtube.com/playlist?list=PLKa_-tysL9bxGU4bVM16vcLPcN8N0Nvu1',
                  );
                },
                child: const Text(
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxGU4bVM16vcLPcN8N0Nvu1',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Text(
                  'Û´: Ø¯ Ø±ÙˆÚ˜Û Ù…Ø¨Ø§Ø±Ú©Û Ù…Ø³Ø§ÛŒÙ„ Ø§Ùˆ Ø§Ø­Ú©Ø§Ù…'),
              InkWell(
                onTap: () {
                  launch(
                    'https://www.youtube.com/playlist?list=PLKa_-tysL9bzkPLGlxnNxg110vp656sPi',
                  );
                },
                child: const Text(
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bzkPLGlxnNxg110vp656sPi',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              const Text(
                'Ûµ: Ø¯ Ù„ÙˆÛŒ Ø§Ø®ØªØ± Ø§Ùˆ Ù‚Ø±Ø¨Ø§Ù†ÛÙ‚Ø±Ø¨Ø§Ù† ÙˆÛ Ú¯ÙˆØ§Ù†ÛŒ Ø¯Ø±ÛŒ Ø§Ùˆ Ù…Ø§ØªÛŒØ§',
              ),
              InkWell(
                onTap: () {
                  launch(
                    'https://t.me/joinchat/AAAAAEejWpGW5-A3GYhoMg',
                  );
                },
                child: const Text(
                  'https://t.me/joinchat/AAAAAEejWpGW5-A3GYhoMg',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    color: Colors.blue,
                  ),
                ),
              ),
              // Additional information here
              // Add more Text widgets with information as needed
            ],
          ),
        ),
      ),
    );
  }
}
