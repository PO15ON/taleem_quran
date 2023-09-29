import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';
import 'package:taleem_quran/live.dart';
import 'package:url_launcher/url_launcher.dart';

import 'about_learning.dart';
import 'about_madrasa.dart';
import 'about_radio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      textDirection: TextDirection.rtl,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _radioModal = false;
  bool _madrasaModal = false;
  bool _learningModal = false;

  Future<void> _onShare() async {
    try {
      await Share.share(
        'https://play.google.com/store/apps/details?id=com.mqbapps.taleemulquranradio',
      );
    } catch (error) {
      print("error: $error");
      // widget._scaffoldKey.currentState.showSnackBar(
      //   SnackBar(
      //     content: Text(error.toString()),
      //   ),
      // );
    }
  }

  void _showModal(String modalType, bool value) {
    setState(() {
      switch (modalType) {
        case 'radio':
          _radioModal = value;
          break;
        case 'madrasa':
          _madrasaModal = value;
          break;
        case 'learning':
          _learningModal = value;
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: widget._scaffoldKey,
      body: Stack(
        children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(
                  0.4), // Adjust opacity by changing the value (0.5 for 50% opacity)
              BlendMode.darken,
            ),
            child: Image.asset(
              'assets/bg4.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/white-logo.png',
                    width: 300,
                    height: 200,
                    alignment: Alignment.center,
                  ),
                  SizedBox(height: 30),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(bottom: 30),
                    child: Column(
                      children: [
                        _buildLinkButton(
                          'ژوندي نشرات',
                          () => Get.to(() => LiveStream()),
                        ),
                        _buildLinkButton(
                          'ویب سایټ',
                          () => _launchURL('https://www.t-quran.com/'),
                        ),
                        _buildLinkButton('د تعلیم القرآن راډیو په اړه', () {
                          _showModal('radio', true);
                        }),
                        _buildLinkButton('د حمادیې مدرسې په اړه', () {
                          _showModal('madrasa', true);
                        }),
                        _buildLinkButton('د زده کړې برخه', () {
                          _showModal('learning', true);
                        }),
                        _buildLinkButton('شریک یې کړئ!', () {
                          _onShare();
                        }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildModal(
            'radio',
            _radioModal,
            () {
              _showModal('radio', false);
            },
          ),
          _buildModal(
            'madrasa',
            _madrasaModal,
            () {
              _showModal('madrasa', false);
            },
          ),
          _buildModal(
            'learning',
            _learningModal,
            () {
              _showModal('learning', false);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLinkButton(String text, VoidCallback onTap) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: InkWell(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                color: Color(0xFF4C35AE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildModal(String modalType, bool isVisible, VoidCallback onClose) {
    if (isVisible) {
      return Container(
        color: Colors.black.withOpacity(0.5),
        child: Center(
          child: Container(
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    offset: Offset(0, 2),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: _modal(modalType, onClose)),
        ),
      );
    } else {
      return SizedBox.shrink();
    }
  }

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      // widget._scaffoldKey.currentState.showSnackBar(
      //   SnackBar(
      //     content: Text('Could not launch $url'),
      //   ),
      // );
    }
  }

  _modal(String modalType, VoidCallback onClose) {
    if (modalType == 'radio') return AboutRadio(onPress: onClose);
    if (modalType == 'madrasa') return AboutMadrasa(onPress: onClose);
    if (modalType == 'learning') return AboutLearning(onPress: onClose);
  }
}
