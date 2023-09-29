import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutLearning extends StatelessWidget {
  final VoidCallback? onPress;

  AboutLearning({this.onPress});

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                      'د زده کړې برخه',
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
              const SizedBox(height: 22),
              const Text(
                'د زده کړې برخه:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Text(' (د دین زده کړه)'),
              _buildLink('۱: عقاید',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxE2Y8xeS0xr1c-CvGBJTUT'),
              _buildLink('۲: اودس|طهارت',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxKdVs4qpz6f0qoSrJ70Gim'),
              _buildLink('۳: لمونځ|نماز',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxGU4bVM16vcLPcN8N0Nvu1'),
              _buildLink('۴: د روژې مبارکې مسایل او احکام',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bzkPLGlxnNxg110vp656sPi'),
              _buildLink('۵: د لوی اختر او قربانۍقربان اړوند مکمل احکام',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxus9YPEjJqmvm9o2V3WSBK'),
              _buildLink('۶: زکات|عشر|',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bxsoJ2-gnr4pOEDwGt0WtfH'),
              _buildLink('۷: ښځه په اسلام کي',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bzMiysgMYe4WG0AFjD9ab4Y'),
              _buildLink('۸: اسماء الحسنی| د الله جل جلاله نومونه',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9bx8Ym1Uq2DDEQlR-NDpKniD'),
              _buildLink('۹: د مفتي عبدالهادي حماد صاحب اصلاحي بیانونه',
                  'https://www.youtube.com/playlist?list=PLKa_-tysL9byArZDKT54AGVbB5Oo2EdI1'),
              const SizedBox(height: 8),
              const Text(
                'نور نشرات دټليګرام له لاري هم اورېدلای سئ لطفاً پر لاندي لينکونو باندي ورداخل سئ پر هر لينک جلا ، جلا خدمات يا نشرات ليدلای ؛ او اورېدلای سئ!',
              ),
              const SizedBox(height: 8),
              const Text(
                '۱: عمومي ګروپ په دغه ګروف کي مکمل او هر اړخيزه نشرات کيږي:',
              ),
              _buildLink('', 'https://t.me/HamadiaMadrasa'),
              const Text(
                '۲: دوهم دحج مکمله زده کړه او دحج په موسم کي ستاسو سره دحج په مراسمو کي مرسته کوونکی ګروف:',
              ),
              _buildLink('', 'https://t.me/+SRLfSMFs6n8xMjk1'),
              const Text(
                'ورپسې لاندي پنځه چينلان دي په هر چينل کي جلا ٫ جلا نشرات روان دي لطفاً ور داخل سئ او چينلان جووين کړئ!',
              ),
              const Text(
                'اسماءالحسنٰی دانبيآوو ع ژوند اوعقائد:',
              ),
              _buildLink('', 'https://t.me/anbiyazawand'),
              const Text(
                'د ږغيږ فتواوو چينل:',
              ),
              _buildLink('', 'https://t.me/HamadiaDarulUloom'),
              const Text(
                'د تفسير اوترجمې چينل :',
              ),
              _buildLink('', 'https://t.me/pashtotafser'),
              const Text(
                'د نبوي سيرت اوبيانونو چينل:',
              ),
              _buildLink('', 'https://t.me/nabseerat'),
              const Text(
                'ټولي ويناوي په دغه چينل کي دي:',
              ),
              _buildLink('', 'https://t.me/islamai'),
              const Text(
                'پاملرنه: د زده کړو په برخه کښي تاسو د کتابونو د مطالعې څخه هم استفاده کولای سئ چي ځيني يې د همدې راډیو په سايټ او ځيني يې په عامو کتابخانو کي پيدا کيږي: د همدې مدرسې د مؤسس شیخ الحدیث مفتي عبدالهادي حماد چاپ سوي اثار:',
              ),
              const Text('۱: اړینه پوهه'),
              const Text('۲: لوی ګناهونه ددوزخ لمبې'),
              const Text('۳: سپېڅلي ورځي'),
              const Text('۴: موسیقي او نوی لیکوالان'),
              const Text('۵: تجوید (درسي کتاب)'),
              const Text('۶: داسلامي نړۍ مظلومیت او دخلاصون لاري چاري'),
              const Text('۷: ریشتنی باور'),
              const Text('۸: دتلاوت لارښود'),
              const Text('۹: دماشومانو لمونځ (درسي کتاب)'),
              const Text('۱۰: پښتو او حساب (درسي کتاب)'),
              const Text('۱۱: نبوي کورنۍ'),
              const Text('۱۲: نبوي معجزې'),
              const Text('۱۳: نبوي غزاوي'),
              const Text('۱۴: دسپېڅلي پیغمبر سپېڅلی ژوند'),
              const Text('۱۵: اسلامي اداب (درسي کتاب)'),
              const Text('۱۶: دتقلید شرعي حیثیت'),
              const Text('۱۷: ښوونه، چي ور زده کړو'),
              const Text('۱۸: په اسلام کي حرام دید'),
              const Text('۱۹: خپل ځانونه وپېژنئ'),
              const Text('۲۰: دنبوت او انبیاوو تاریخ'),
              const Text('۲۱: ددوزخ اودوزخیانو حالات'),
              const Text('۲۲: یوولس ګناهکاري ډلي'),
              const Text('۲۳: په سروتیارو کي سرې لمبې'),
              const Text('۲۴: کوډي جادوګري او ناروا تعویذونه داسلام له نظره'),
              const Text('۲۵: فضائل اعمال'),
              const Text('۲۶: فکري جګړه'),
              const Text('۲۷: دامام اعظم رح وصیتونه'),
              const Text('۲۸: شپږ ګناهګاري ډلی'),
              const Text('۲۹: دزکاة احکام'),
              const Text('۳۰: اسلام میشتي سیمي اودهغوی برخلیک'),
              const Text('۳۱: قول الفهام في قرائت خلف الامام'),
              const Text('۳۲: دانبیاوو علیهم السلام ژوندلیکونه'),
              const Text('۳۳: ایا زموږ په هیواد کي دجمعې لمونځ سته؟'),
              const Text('۳۴: حنفي مذهب زموږ ښکلی مذهب دئ'),
              const Text('۳۵: مواعظ العلماء عربي دوه جلده'),
              const Text('۳۶: تفهیم التفاسیر ۱۲ جلده'),
              const Text('۳۷: د کرونا اړونده شرعي احکام او هدایات، همدا کتاب.'),
              const Text('۳۸: الهي زندان او زندانیان.'),
              const Text('۳۹: تدوین الفقه'),
              const Text('۴۰: الکافي شرح سراجي'),
              const Text('۴۱: ښه زده کونکی (درسي کتاب)'),
              const Text('۴۲: سپېڅلی ماشوم(درسي کتاب)'),
              const Text('۴۳: درسي تجوید (د څلوم ټولګۍ لپاره)'),
              const Text('۴۴: درسي تجوید (د پنځم ټولګۍ لپاره)'),
              const Text('۴۵: درسي تجوید (د شپږم ټولګۍ لپاره)'),
              const Text('۴۶: څلوېشت نبوي وصیتونه'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLink(String text, String url) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text),
        InkWell(
          onTap: () => _launchURL(url),
          child: Text(
            url,
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
