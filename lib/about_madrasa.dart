import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMadrasa extends StatelessWidget {
  final VoidCallback onPress;

  AboutMadrasa({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                color: Color(0xFF4C35AE),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: onPress,
                    icon: const Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                  const Text(
                    'د حمادیې مدرسې په اړه',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                  ),
                  const SizedBox(width: 30.0), // Adjust as needed
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'د حمادیه مدرسې پېژندګلوي:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                      'جامعه اسلامیه حمادیه د قرآن بنسټ یوه علمي څانګه ده، چې په (۱۳۹۰ هـ.ش) کي د شیخ الحدیث مفتي عبدالهادي حماد په هڅو او زیار تأسیس سوې ده او له نېکه مرغه یې تر تاسیس وروسته د اسلام د عقېدې وروڼو ته علمي خدمتونه کړي دي.',
                    ),
                    // Add more text as needed
                    const Text(
                      'لومړی آدرس:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                        'جامعه اسلامیه حمادیه، د پامیلۍ نري پله ته څېرمه، دوولسمه ناحیه، قندهار، افغانستان.'),
                    // Add more text as needed
                    const Text(
                      'د همدې مدرسې د مؤسس شیخ الحدیث مفتي عبدالهادي حماد چاپ سوي اثار:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    // Add more text as needed
                    Linkify(
                      onOpen: (link) async {
                        if (await canLaunch(link.url)) {
                          await launch(link.url);
                        } else {
                          throw 'Could not launch $link';
                        }
                      },
                      text: '''
۱: اړینه پوهه
۲: لوی ګناهونه ددوزخ لمبې
۳: سپېڅلي ورځي
۴: موسیقي او نوی لیکوالان
۵: تجوید (درسي کتاب)
...
۴۳: درسي تجوید (د شپږم ټولګۍ لپاره)
۴۴: درسي تجوید (د پنځم ټولګۍ لپاره)
۴۵: درسي تجوید (د شپږم ټولګۍ لپاره)
۴۶: څلوېشت نبوي وصیتونه
                      ''',
                      style: const TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                      ),
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
