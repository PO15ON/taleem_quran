import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutMadrasa extends StatelessWidget {
  final VoidCallback onPress;

  AboutMadrasa({required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(10.0),
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
                    const Text(
                      'او تر اوس مهاله پوري لاندي د علمي خدمتونو څانګي لري:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                        """۱: د صفر صنف څخه بیا تر شپاړسم صنف (لویې دورې ـ دورة الحدیث) پوري درسونو، چي شاوخوا زر تنه شاګردان لري. همدا ډول د شاګردانو تر فراغت وروسته د تخصص فی الفقه لپاره دوه کلنه دوره لري، چې تخصص في الفقه یعني مفتیان هم فارغه کوي.
۲: دارالافتاء: چې د عامو خلکو لپاره پکښي د عقایدو، عباداتو، معاملاتو خصوصاً حقوقي مسائلي جوابیږي او په ځانګړي ډول د خلکو د خپل منځیو شخړو د له منځه وړلو لپاره یوه ځانګړې اداره، چي تر دې مهاله په زرګونو سوالونه پکښي جواب سوي دي.
۳: دارالحفاظ: د قرآن کریم د حفظ کولو ځانکړې څانګه.
۴: لیلیه: د هغو شاګردانو لپاره د شپې تېرولو انتظام، یعني خوراک، څیښاک، لباس او داسي نور اسباب برابرول، کوم چي د ښار څخه د لیري پرتو ولسوالیو یا نورو ولایاتو څخه مدرسې ته د زده کړې لپاره راغلي دي.
۵: تعلیم القرآن راډیو، قندهار (۹۲.۹ ایف ایم):چي په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.
۶: تعلیم القرآن راډیو، هرات (۹۲.۶ ایف ایم): چي د هرات په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم  څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.
۷: تعلیم القرآن راډیو، هلمند (۹۲.۹ ایف ایم): چې د ګریشک ولسوالۍ په ښار او شاوخوا ولسوالیو کي شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.
۸: تعلیم القرآن راډیو، بادغیس (۸۹.۷ ایف ایم): چې د باغیس په ښار او ولسوالیو کې شپاړس ساعته پر ایف ایم څپو باندي؛ دیني، اجتماعي صحي، تاریخي او ادبي موضوعاتو اړونده نشرات کوي.
۹: تعلیم القرآن راډیو اپلکیشن (Taleemul Quran Radio): په زیرک ټلیفون کي د دغه اپلکیشن په ډانلوډېدو سره څلرویشت ساعته په ټوله نړۍ د تعلیم القرآن راډیو اسلامي، اجتماعي او ادبي موضوعاتو نشرات اورېدل کېدای سي. 
۱۰: جامعه اسلامیه حمادیه فیسبوک فیج، چي اړیني مسائلي او نور اړین موضوعات په ږغیز او ویډیویي شکل باندي نشریږي.
                    """),
                    _buildLink(' لینک:',
                        'https://www.facebook.com/Hammadi.MadrasaWhattsapp'),
                    Text(
                        '۱۱: تعلیم القرآن راډیو ویب پاڼه: چي پکښي تفسیر، سیرت، شرعي پوښتنې او جوابونه، ورځني احادیث، صحي، ټولنیز او نور اړین موضوعات نشریږي.'),
                    _buildLink(' لینک:', 'https://www.t-quran.com/'),
                    Text(
                        '''۱۲: حمادیه دارالعلوم د وآتساف له لاري، د همدې څانګي خادمانو تر پنځه څلویښت ګروفونه جوړ کړي دي، چي د نړۍ د بېلا بیلو هیوادونو څخه متدین وروڼه پکښي دي او په دې ګروپونو کي ترجمه، تفسیر، اصلاحي بیانونه، د ګډونوالو سوالونه او جوابونه نشریږي.
۱۳: د حمادیه دارالعلوم ټیلیګرام چینل د ترجمې او تفسیر لپاره.
۱۴: د حمادیه دارالعلوم ټیلیګرام چینل د سیرت لپاره.
۱۵: د حمادیه دارالعلوم ټلیګرام چینل د اصلاحي بیانونو لپاره.
۱۶: د حمادیه دارالعللوم ټلیګرام چینل د روژې، اختر، حج او داسي نورو مسائلو د درسونو او سوال جواب لپاره.
۱۷: د تألیف او ترجمې څانګه: چي د دې څانګي له لاري د همدې مدرسې د استادانو او نورو وتلو علماوو په پښتو، فارسي او عربي ژبو باندي تالیف سوي او ژباړل سوي کتابونه چاپیږي.
۱۸: نداء القرآن مجله: چي پکښي د لوستونکو لپاره بېلابېل موضوعات په چاپي بڼه نشریږي.
۱۹: افغان مواقیت اپلکیشن: د نړۍ په هر ځای کې د حنفي فقهې مطابق د لمانځه وختونه، قبله نماء؛ روژه مات او پېشلمي وختونه په اسانی معلومیږي.'''),
                    _buildLink('ډانلوډ (کښته) کولو لینک:',
                        ' https://play.google.com/store/apps/details?id=com.al_moazzin'),
                    const Text(
                      'لومړی آدرس:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                        'جامعه اسلامیه حمادیه، د پامیلۍ نري پله ته څېرمه، دوولسمه ناحیه، قندهار، افغانستان.'),
                    const Text(
                      'دوهم آدرس:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    const Text(
                        'جامعه اسلامیه حمادیه، ۳۱ سړک، دوهمه عینو مېنه، قندهار، افغانستان.'),
                    // Add more text as needed
                    const Text(
                      'د همدې مدرسې د مؤسس شیخ الحدیث مفتي عبدالهادي حماد چاپ سوي اثار:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    // Add more text as needed
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
                    const Text(
                        '۲۴: کوډي جادوګري او ناروا تعویذونه داسلام له نظره'),
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
                    const Text(
                        '۳۷: د کرونا اړونده شرعي احکام او هدایات، همدا کتاب.'),
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
          ],
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

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
