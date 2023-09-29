import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class AboutRadio extends StatelessWidget {
  final Function() onPress;

  AboutRadio({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
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
                    'د تعلیم القرآن راډیو په اړه',
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'بسم الله الرحمن الرحیم\nالحمد لله، والصلاة والسلام على رسول الله وعلى آله وصحبه ومَنْ والاه وبعد:',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'پتمنو او عزتمنو اورېدونکو!\nالسلام علیکم و رحمت الله وبرکاته؛\nد تعلیم القرآن اسلامي راډیو ستر اهداف د دیني پوهي خپرول او د حق و لاري ته دعوت دي. تعلیم القرآن راډیو په هیڅ ګوند او هیڅ غورځنګ ته منسوبه نه ده او نه هم نا ولسي خدمت بلکي صرف د ولس لپاره دیني او اجتماعي خدمت کوي.\nدرنو اورېدونکو او لوستونکو! تعلیم القرآن راډیو د قرآن بنسټ د خدماتو د څانګو یوه تعلیمي او تربیوي څانګه ده. قرآن بنسټ په (۱۳۸۴) هجري لمریز کال د جید او هڅاند عالم شیخ الحديث مفتي عبدالهادي حماد صاحب له لوري تأسیس سو، چې د خپلو هیوادوالو لپاره د نشر و اشاعت، تعلیم و تربیه او د عوت په لاره کي خدمات لري.\nتعلیم القرآن راډیو د کندهار ښار تر څنګ د هیواد په ځینو نورو ولایتونو کې هم د ولس د غوښتنې او دینې تندې د خړوبولو په موخه خپلې څانګې فعاله کړي او ان شاء الله د هیواد ټولو ولایتونو ته به خپل خدمات و رسوي.\nتعليم القران راډیو   د سیمي د سلګونو بانفوذو او ولسي علماء کرامو او پوهانو پرمخ بیول کیږي او په مالي برخه کي د ولس په صدقاتو او مشروع تجارتي اعلاناتو تمویلیږي.\n',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  'تعليم القران راډیو في الحال په لاندي ولايتونو کي څانګي لري:',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    // marginBottom: 8,
                  ),
                ),
                const Text(
                  '۱: تعلیم القرآن راډیو، قندهار (۹۲.۹ ایف ایم): چي په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '۲: تعلیم القرآن راډیو، هرات (۹۲.۶ ایف ایم): چي د هرات په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم  څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '۳: تعلیم القرآن راډیو، هلمند (۹۲.۹ ایف ایم): چې د ګریشک ولسوالۍ په ښار او شاوخوا ولسوالیو کي شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '۴: تعلیم القرآن راډیو، بادغیس (۸۹.۷ ایف ایم): چې د باغیس په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '۵: تعلیم القرآن راډیو اپلکیشن (Taleemul Quran Radio): په زیرک ټلیفون کي د دغه اپلکیشن په ډانلوډېدو سره څلرویشت ساعته په ټوله نړۍ د تعلیم القرآن راډیو اسلامي، اجتماعي او ادبي موضوعاتو نشرات اورېدل کېدای سي.',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                const Text(
                  '۶: افغان مواقيت اپليکيشن د نړۍ په هر ځای کي د حنفي مذهب مطابق د لمانځه وختونه ، قبله نماء ، د روژه مات او پېشلمي وختونه په اسانۍ سره معلوميږي په لاندي لينک يې تر لاسه کولای سئ:',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    const url =
                        'https://play.google.com/store/apps/details?id=com.al_moazzin';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: const Text(
                    'https://play.google.com/store/apps/details?id=com.al_moazzin',
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.grey[300],
              padding: const EdgeInsets.all(22.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'د تلیفوني اړیکو شمیره: 93702222146+',
                    style: TextStyle(
                      color: Colors.black,
                      // marginBottom: 8,
                    ),
                  ),
                  Text(
                    'برېښنالیک: aef.kdr@gmail.com',
                    style: TextStyle(
                      color: Colors.black,
                      // marginBottom: 8,
                    ),
                  ),
                  Text(
                    'لومړی آدرس:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // marginBottom: 8,
                    ),
                  ),
                  Text(
                    'جامعه اسلامیه حمادیه، د پامیلۍ نري پله ته څېرمه، دوولسمه ناحیه، قندهار، افغانستان.',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'دوهم آدرس:',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // marginBottom: 8,
                    ),
                  ),
                  Text(
                    'جامعه اسلامیه حمادیه، ۳۱ سړک، دوهمه عینو مېنه، قندهار، افغانستان.',
                    style: TextStyle(
                      color: Colors.black,
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
}
