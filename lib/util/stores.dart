import 'package:flutter/material.dart';

import '../dto/story.dart';

final List<Story> stories = [
  Story(
    title: "Linux nima uchun yaratilgan?",
    subtitle: "Erkinlik orzusi va norozilik kuchi",
    content:
        "1991-yilda Helsinki universitetining talabalardan biri — Linus Torvalds — kompyuterda ishlash uchun UNIX tizimidan foydalanmoqchi bo'ladi. Ammo UNIX juda qimmat edi va ko'pchilik uchun yopiq edi. Linus bundan norozi bo'lib, \"Nega men o'zim uchun bepul va ochiq tizim yozmayman?\" deb qaror qildi. U o'zining yadro kodini Usenet forumida bo'lishdi va hamjamiyat uni rivojlantira boshladi. Shu tariqa Linux nafaqat yangi operatsion tizim, balki ochiq manbali inqilob ramziga aylandi. Bugun milliardlab qurilmalarda — smartfonlardan superkompyuterlargacha — Linux ishlaydi.",
    emoji: "🐧",
    primaryColor: Color(0xFF667eea),
  ),
  Story(
    title: "Python qanday paydo bo'lgan?",
    subtitle: "Oddiylik – kuchli dasturlash falsafasi",
    content:
        "1989-yilda Gvido van Rossum Amsterdamdagi institutda ishlardi. U dasturlash tillaridagi ortiqcha murakkablikdan charchagan edi. Kod yozish odamni qiynamasligi kerak deb o'ylardi. Shuning uchun u bo'sh vaqtida \"sodda va o'qilishi oson\" til yaratishni boshladi. Monty Python komediyasiga qoyil qolganidan tilga 'Python' deb nom berdi. Bugungi kunda Python ilmiy hisoblash, AI, backend va avtomatlashtirishning asosiy qurollaridan biri. Uning mashhurlik siri — minimal kod, maksimal natija.",
    emoji: "🐍",
    primaryColor: Color(0xFF10B981),
  ),
  Story(
    title: "GitHub'ning birinchi serveri",
    subtitle: "Bir Mac Mini'dan global platformagacha",
    content:
        "GitHub 2008-yilda Richard, Chris va PJ tomonidan kichik xonada boshlandi. Ularning byudjeti katta emas edi, shuning uchun ular GitHub'ni oddiy Mac Mini kompyuterida ishga tushirishdi. Bu kompyuter bir necha ming dasturchiga xizmat qilar edi! Ammo g'oya kuchli edi: kodni bir joyda jamlash va hamkorlikni osonlashtirish. Oradan yillar o'tdi — bugun GitHub dunyodagi eng yirik kod ekotizimi bo'lib, milliardlab repozitoriyalarni o'zida saqlaydi.",
    emoji: "🚀",
    primaryColor: Color(0xFFEC4899),
  ),
  Story(
    title: "Stack Overflow qanday tug'ildi?",
    subtitle: "Dasturchilarning haqiqiy qutqaruvchisi",
    content:
        "Dasturchilar bir-biriga yordam bera oladigan joy kerak edi. 2008-yilda Jeff Atwood va Joel Spolsky shu muammoni ko'rib, Stack Overflow'ni yaratishdi. Ularning maqsadi forum emas, aniq savollar va aniq javoblar tizimi bo'lish edi. Natijada platforma tezda o'sdi va hozir har soniyada dasturchilar minglab muammolarni hal qilishmoqda. Hazil bilan aytiladi: Stack Overflow'siz dasturchi faqat 'kutubxonachi'ga aylanib qoladi.",
    emoji: "💡",
    primaryColor: Color(0xFFF59E0B),
  ),
  Story(
    title: "Android qanday tug'ilgan?",
    subtitle: "Mobil bozorda ochiqlik inqilobi",
    content:
        "2003-yilda Endi Rubin va uning jamoasi smartfonlar kelajagi ochiqlikga asoslanadi, deb ishonishardi. O'sha davrda mobil tizimlar yopiq ekotizimga ega bo'lib, faqat ishlab chiqaruvchi qoidasiga bo'ysunardi. Android Inc. ushbu tizimni buzish uchun tashkil etildi. Biroq investorlar ularga ishonmadi, mablag' kam, loyiha esa xavfli ko'rinardi.\n\n2005-yilda Google jamoaning kelajagini ko'rib, Android'ni xarid qildi va keng ko'lamli qo'llab-quvvatlashni boshladi. Ochilgan manba, moslashuvchanlik va ishlab chiqaruvchilar uchun erkinlik — bu Android'ni bozorda ajratib qo'ydi.\n\n2008-yilda HTC Dream smartfoni bilan Android rasman dunyoga chiqdi. Qisqa vaqt ichida yuzlab kompaniyalar uni qabul qila boshladi. Bugungi kunda milliardlab qurilmalar — televizor, avtomobil, aqlli soat, hatto muzlatkichlarda ham Android ishlaydi. Uning falsafasi esa o'sha: \"Har kimga ochiq texnologiya!\"",
    emoji: "🤖",
    primaryColor: Color(0xFF3DDC84),
  ),
  Story(
    title: "YouTube qanday paydo bo'lgan?",
    subtitle: "Videolarni ulashish — yangi davr boshlanishi",
    content:
        "2005-yilda PayPal kompaniyasidan ketgan uch do'st: Chad Hurley, Steve Chen va Jawed Karim internetda video ulashish qanchalik qiyin ekanini payqashdi. O'sha paytda videoni joylash uchun formatlar, pleyerlar va hostinglar juda murakkab edi.\n\nUlar oddiy g'oyani o'ylashdi: har kim istagan videosini bir necha soniyada yuklay olsin. Shu tariqa YouTube tug'ildi va birinchi video — \"Me at the zoo\" tarixga kirdi.\n\nG'oya shu qadar tez yoyildiki, bir necha oy ichida sayt millionlab tomosha qilishlarga erishdi. 2006-yilda Google 1.65 milliard dollarga YouTube'ni xarid qildi. Bugun YouTube nafaqat ko'ngilochar platforma — u ta'lim, biznes, san'at va dunyo fikrining global sahnasiga aylangan.\n\nHatta deylishadi: \"Agar YouTube'da yo'q bo'lsa, ehtimol hali mavjud emasdir.\"",
    emoji: "🎥",
    primaryColor: Color(0xFFFF0000),
  ),
  Story(
    title: "Apple qanday qayta tug'ildi?",
    subtitle: "Bankrotlik yoqasidan innovatsiya cho'qqilarigacha",
    content:
        "1990-yillarning oxiri Apple uchun eng og'ir davr edi. Kompaniya moliyaviy inqirozda, mahsulotlar esa bozorda o'z o'rnini topa olmasdi. Investorlar hatto Apple yaqin orada butunlay yo'q bo'ladi, deb o'ylayotgan edi.\n\nAmmo 1997-yilda asoschi Steve Jobs kompaniyaga qaytdi va tarixdagi eng keskin burilish boshlandi. U mahsulotlar sonini kamaytirdi, dizayn va intuitiv tajribani birinchi o'ringa qo'ydi. Jonathan Ive bilan birga ular iMac, keyin iPod, iPhone va iPad kabi mahsulotlar yaratishdi — har biri texnologiya bozorini boshqattan belgiladi.\n\nApple innovatsiya, estetika va soddalikni yagona ekotizimga aylantirdi. Bugun Apple nafaqat texnika ishlab chiqaruvchi, balki hayot uslubini belgilovchi kuchdir. Bankrotlik yoqasidan dunyodagi eng qimmat kompaniyaga aylanish — bu haqiqiy qayta tug'ilishdir.",
    emoji: "🍏",
    primaryColor: Color(0xFF1E40AF),
  ),
  Story(
    title: "OpenAI qanday boshlandi?",
    subtitle: "AI xavfsizligi — asosiy maqsad",
    content:
        "2015-yilda Elon Musk, Sam Altman va bir guruh tadqiqotchilar sun'iy intellekt kelajagi xavfsiz bo'lmasligi mumkinligini ko'rib, OpenAI'ni tuzishdi. Ularning maqsadi aniq edi: AI insoniyat uchun foydali bo'lishi va bir guruhning qo'lida kuch sifatida jamlanib qolmasligi lozim.\n\nOpenAI dastlab ochiq ilmiy tadqiqotlarga e'tibor qaratdi, natijalar hamjamiyat bilan baham ko'rildi. Ammo bir necha yildan so'ng kuchayib borayotgan AI raqobati xavfsizlik nuqtai nazaridan yopiq innovatsiyani ham talab qildi.\n\nGPT seriyasi, DALL·E va boshqa modellar AI'ni ommalashtirdi. Ayniqsa ChatGPT butun dunyoning texnologiya bilan ishlash odatini o'zgartirdi — odamlar ilk bor AI bilan tabiiy muloqot qila boshlashdi.\n\nBugun OpenAI AI kelajagini shakllantirishda yetakchi o'rin tutib turibdi.",
    emoji: "🤖",
    primaryColor: Color(0xFF6D28D9),
  ),
  Story(
    title: "Tesla'ning ilk muvaffaqiyati",
    subtitle: "Elektr mashina — orzu emas, haqiqat",
    content:
        "2000-yillar boshida elektr avtomobillar sekin, quvvati kam va amaliy emas deb hisoblanardi. Hech kim bu g'oyaga jiddiy yondashmasdi. Tesla esa bunga qarshi fikrda edi: kelajak — toza energiya va elektr transportda.\n\n2008-yilda Tesla birinchi marta Roadster'ni taqdim etdi. Bu sportkar 0 dan 100 km/soatgacha atigi 4 soniyada chiqardi — bu esa odamlarga elektr mashina benzinli raqobatchilardan kuchliroq bo'lishi mumkinligini isbotladi.\n\nKeyingi modellarda ham Tesla o'zgacha yondashuvni davom ettirdi: Over-the-air yangilanishlar, avtopilot, katta sensorli panel bilan boshqaruv — avtomobil sanoati qoidalari o'zgardi.\n\nBugun Tesla elektr transportning butun dunyo bo'ylab standartga aylanishiga sababchi bo'lib, ekologik kelajak sari yo'l ochmoqda.",
    emoji: "🚗",
    primaryColor: Color(0xFF0EA5E9),
  ),
  Story(
    title: "Facebook garajda boshlandi",
    subtitle: "Universitet loyihasidan global tarmoqqa",
    content:
        "2004-yilda Mark Zuckerberg Harvard universitetida talaba edi. U do'stlari bilan kampusda talabalar bir-birini tanib olishi uchun oddiy veb-sayt yaratdi — FaceMash deb nomlangan.\n\nKeyinchalik g'oya rivojlanib, TheFacebook.com bo'ldi. Dastlab faqat Harvard talabalari foydalanishi mumkin edi, ammo tezda boshqa universitetlarga ham tarqaldi. Odamlar o'z profillarini yaratib, do'stlar qo'shib, xabar almashar edilar.\n\nZuckerberg va jamoasi platformani kengaytirib, 2006-yilda hamma uchun ochiq qilishdi. Facebook ijtimoiy tarmoq tushunchasini butunlay o'zgartirdi: shaxsiy hayot, fikrlar, fotolar, tadbirlar — hammasi bir joyda.\n\nBugun Facebook (Meta) milliardlab odamni bog'lovchi ekotizimga aylangan va dunyo kommunikatsiyasini boshqattan shakllashtirmoqda.",
    emoji: "👥",
    primaryColor: Color(0xFF1877F2),
  ),
  Story(
    title: "Wi-Fi nima uchun bepul?",
    subtitle: "Patent ochilishi — texnologik inqilob",
    content:
        "1990-yillarda simsiz internet texnologiyasi rivojlana boshladi. Turli kompaniyalar o'z standartlarini yaratmoqchi bo'lishdi, bu esa umumiy tizim yaratishni qiyinlashtirardi.\n\n1997-yilda IEEE 802.11 standarti joriy etildi — bu Wi-Fi'ning asosidir. Asosiy qaror — patentlarni ochiq va royaltisiz qilish edi. Demak, har kim Wi-Fi texnologiyasini o'z mahsulotlariga qo'sha olardi.\n\nBu qaror texnologiyaning tez tarqalishiga olib keldi. Bugun Wi-Fi har bir uyda, ofisda, kafelarda va hatto samolyotlarda mavjud. Simsiz internet hayotimizning ajralmas qismi.\n\nOchiq standartlar — texnologiya demokratiyasining eng yaxshi misoli.",
    emoji: "📶",
    primaryColor: Color(0xFF00A8E1),
  ),
  Story(
    title: "JavaScript 10 kunda yaratildi",
    subtitle: "Tezkorlik va vaqt bosimi — yaratuvchanlik kuchi",
    content:
        "1995-yilda Brendan Eych Netscape kompaniyasida ishlardi. Kompaniya web-brauzerga dinamik dasturlash tili qo'shmoqchi edi, ammo vaqt juda oz edi — faqat 10 kun!\n\nBrendan kun-tunu ishladi va JavaScript'ni yaratdi. Dastlab til Mocha, keyin LiveScript deb ataldi, ammo marketing sabablari bilan JavaScript nomini oldi.\n\nBoshlang'ich versiyada ko'plab kamchiliklar bor edi, ammo til tezda rivojlandi. Bugun JavaScript web-dasturlashning asosi — frontend, backend (Node.js), mobil ilovalar (React Native) va hatto desktop dasturlar uchun ishlatiladi.\n\nBir necha kunlik loyiha butun internetning tilga aylandi!",
    emoji: "⚡",
    primaryColor: Color(0xFFF7DF1E),
  ),
  Story(
    title: "Amazon garajdan boshlandi",
    subtitle: "Kitoblardan dunyoni o'zgartirish",
    content:
        "1994-yilda Jeff Bezos Wall Street'dagi yaxshi ish o'rnini tashlab, garajida yangi loyihani boshladi. U internetning kelajagi e-commerce ekanligini tushundi va kitob sotish bilan boshlashga qaror qildi.\n\nAmazon.com dastlab faqat kitob do'koni edi. Ammo Bezos kattaroq reja tuzgan edi: har qanday narsani sotadigan platforma yaratish. Kompaniya sekin elektron tovarlar, kiyim, oziq-ovqat va xizmatlar bozoriga kirdi.\n\nBugun Amazon dunyo bo'ylab yetkazib berish, cloud hizmatlar (AWS), streaming (Prime Video) va sun'iy intellekt sohasida ham liderdir. Garajdagi orzudan global imperiyagacha — muvaffaqiyatning eng yorqin namunasi.",
    emoji: "📦",
    primaryColor: Color(0xFFFF9900),
  ),
  Story(
    title: "Wikipedia nima uchun bepul?",
    subtitle: "Bilimlar hammaga tegishli",
    content:
        "2001-yilda Jimmy Wales va Larry Sanger onlayn ensiklopediya yaratishni xohlashdi. Ammo ularning yondashuvi mutlaqo boshqacha edi: hech kim pul to'lamaydi va hamma tahrir qilishi mumkin.\n\nWikipedia dastlab shubha bilan qaraldi — ekspertlar bunday tizim ishlamaydi deb hisoblashdi. Ammo jamiyatning kuchi ajoyib natijalarga olib keldi. Millionlab odamlar bilimlari bilan hissa qo'shdi.\n\nBugun Wikipedia 300+ tilda mavjud va eng ishonchli ma'lumot manbalaridan biri. U hech qachon reklama joylashmaydi va faqat xayriya bilan yashaydi. Bu bilim erkin bo'lishi kerakligini isbotlaydigan jonli misol.",
    emoji: "📚",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Google qanday nom oldi?",
    subtitle: "Imlo xatosidan brend tug'ildi",
    content:
        "1998-yilda Larry Page va Sergey Brin qidiruv tizimi uchun nom izlashdi. Ular 'Googol' — matematik atamani tanlamoqdalar edi (1 va 100 ta nol). Bu ulkan ma'lumot hajmini anglatardi.\n\nAmmo domen nomini ro'yxatdan o'tkazishda xato qilishdi va 'Google' deb yozib qo'yishdi! Ular keyinchalik xatoni sezishdi, lekin nom allaqachon yoqib qolgan edi.\n\nGoogle o'shanda oddiy qidiruv tizimi edi, ammo tezda dunyo internetining markaziga aylandi. Email (Gmail), xaritalar (Maps), video (YouTube), mobil tizim (Android) — barchasi Google ekotizimiga kiradi.\n\nImlo xatosi — eng muvaffaqiyatli brending xatosiga aylandi!",
    emoji: "🔍",
    primaryColor: Color(0xFF4285F4),
  ),
  Story(
    title: "Minecraft bir kishi tomonidan yaratildi",
    subtitle: "Garniturali ishdan dunyo fenomeniga",
    content:
        "2009-yilda Markus Persson (Notch) Shvetsiyada oddiy dasturchi bo'lib ishlardi. U bo'sh vaqtlarida o'yin yaratish bilan shug'ullanardi va bloklar dunyosi g'oyasini sinab ko'rmoqchi edi.\n\nMinecraft dastlab oddiy prototip edi, ammo internet uni tezda kashf etdi. O'yin hech qanday maqsad, hikoya yoki cheklovlarsiz yaratish erkinligini taqdim etdi — bu revoluciya edi!\n\nNotch o'yinni dastlab yakka o'zi, keyin kichik jamoa bilan rivojlantirdi. 2014-yilda Microsoft Minecraft'ni 2.5 milliard dollarga sotib oldi. Bugun bu dunyodagi eng ko'p sotiladigan o'yin.\n\nBir odamning ishtiyoqi global fenomenga aylandi.",
    emoji: "⛏️",
    primaryColor: Color(0xFF8B4513),
  ),
  Story(
    title: "Reddit — internet old sahifasi",
    subtitle: "Oddiy forum global platformaga aylandi",
    content:
        "2005-yilda ikki universitet do'sti — Steve Huffman va Alexis Ohanian — oddamlar qiziqarli kontentni topib, baham ko'radigan sayt yaratdilar. Bu Reddit edi — 'Front Page of the Internet'.\n\nReddit'ning o'ziga xosligi foydalanuvchilar tomonidan boshqarilishida. Odamlar o'zlari kontentni baholaydi, izoh qoldiradi va subredditlar tuzadi — ixtisoslashgan jamiyatlar.\n\nPlatforma ko'plab mashhur internet memlari, harakatlar va hatto investitsiya to'lqinlarining (GameStop hodisasi kabi) manbaiga aylandi. Bugun yuzlab millionlar Reddit orqali yangiliklar, suhbatlar va bilimlarga ega bo'lishadi.\n\nReddit — bu internet demokratiyasining yashagan misoli.",
    emoji: "🗨️",
    primaryColor: Color(0xFFFF4500),
  ),
  Story(
    title: "Spotify musiqa sanoatini saqlab qoldi",
    subtitle: "Piratlikdan legallikka o'tish",
    content:
        "2000-yillarning oxiri musiqa sanoati uchun qiyinchilik davri edi. Odamlar musiqa uchun pul to'lashni to'xtatdilar, pirat yuklamalar keng tarqagan edi va artistlar zarar ko'rmoqda edi.\n\n2008-yilda Shvetsiyalik tadbirkor Daniel Ek muammoni hal qilish uchun Spotify'ni yaratdi. G'oya oddiy edi: musiqa bepul bo'lsin, ammo legal. Daromad reklama va premium obunalardan keladi.\n\nDastlab musiqa kompaniyalari qarshilik qilishdi, ammo tizim ishladi. Bugun Spotify millionlab artistlarga daromad keltiradi va milliardlab inson musiqa tinglaydi — barchasi qonuniy.\n\nSpotify musiqa iste'mol qilishni butunlay o'zgartirdi.",
    emoji: "🎵",
    primaryColor: Color(0xFF1DB954),
  ),
  Story(
    title: "Netflix pochtadan streamingga",
    subtitle: "DVD'dan raqamli inqilobga",
    content:
        "1997-yilda Reed Hastings videotekadan disk qaytarishni unutib, katta jarima to'ladi. Bu tajriba uni Netflix yaratishga ilhomlantirdi — pochtada DVD yollash xizmati.\n\nAmmo Netflix rahbarlari kelajakni ko'rdilar: internet tezligi oshib, streaming mumkin bo'ladi. 2007-yilda ular streaming xizmatini ishga tushirishdi va sanoatni boshqattan yaratishdilar.\n\nKeyinchalik Netflix o'z kontentini ishlab chiqara boshladi — House of Cards, Stranger Things va boshqalar. Bugun Netflix global ko'ngilochar gigantiga aylandi.\n\nPochtadan global platformagacha — moslashuvchanlik va innovatsiya namunasi.",
    emoji: "🎬",
    primaryColor: Color(0xFFE50914),
  ),
  Story(
    title: "Uber nima uchun paydo bo'ldi?",
    subtitle: "Taksi chaqira olmaslikdan billion dollarlik g'oya",
    content:
        "2008-yilda Travis Kalanick va Garrett Camp Parijda konferentsiyadan keyin taksi topa olmadilar. Qor yog'ayotgan edi, sovuq edi va ular noqulaylik his qilishdi.\n\nU kechada ular bir-biriga: \"Nega ilovadan taksi chaqirib bo'lmaydi?\" deb so'rashdi. Shu savoldan Uber g'oyasi tug'ildi — bir tugma bosish orqali mashinani chaqirish.\n\n2009-yilda Uber San-Fransiskoda ishga tushdi. Dastlab faqat qora premium avtomobillar xizmati edi, ammo tezda oddiy taksilar va UberX qo'shildi.\n\nBugun Uber transport va yetkazib berish industriyasini butunlay o'zgartirdi. Millionlab haydovchilar va yo'lovchilar uchun hayot qulayroq bo'ldi.",
    emoji: "🚕",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "WordPress — internetning 43%i",
    subtitle: "Blogging vositasidan global platformagacha",
    content:
        "2003-yilda Matt Mullenweg 19 yoshida talaba bo'lib, oddiy blog yaratish vositasi kerak edi. Mavjud tizimlar murakkab yoki qimmat edi, shuning uchun u o'zi yaratishga qaror qildi — shunday WordPress tug'ildi.\n\nWordPress ochiq manba va bepul edi, shuning uchun tezda ommalashdi. Odamlar nafaqat bloglar, balki biznes saytlar, do'konlar va hatto ijtimoiy tarmoqlar yaratishdi.\n\nBugun internetdagi saytlarning 43% WordPress'da qurilgan. Bu shaxsiy bloglardan The New Yorker kabi yirik nashrlargacha hamma uchun mo'ljallangan.\n\nBir talabaning loyihasi global veb-platformaga aylandi.",
    emoji: "✍️",
    primaryColor: Color(0xFF21759B),
  ),
  Story(
    title: "Bitcoin — birinchi kripto valyuta",
    subtitle: "Noma'lum shaxsdan moliyaviy inqilob",
    content:
        "2008-yilda dunyoviy moliyaviy inqiroz davomida Satoshi Nakamoto nomi bilan noma'lum shaxs (yoki guruh) whitepaper nashr etdi: 'Bitcoin: Peer-to-Peer Electronic Cash System'.\n\nBu hujjat markazlashtirilmagan raqamli pul tizimini tasvirladi — banklar va hukumatlar zarur emas edi. 2009-yilda birinchi Bitcoin bloklari qazib olindi.\n\nDastlab Bitcoin texnologiya ishqibozlari uchun eksperiment edi, ammo vaqt o'tishi bilan qiymati oshdi va global qabul topdi. Blockchain texnologiyasi butunlay yangi sohalar uchun eshik ochdi.\n\nSatoshi'ning haqiqiy kimligi hali ham sir, ammo uning yaratgan inqilobi haqiqat.",
    emoji: "₿",
    primaryColor: Color(0xFFF7931A),
  ),
  Story(
    title: "Instagram — filter va hikoya",
    subtitle: "Fotofiltrdan ijtimoiy gullashgacha",
    content:
        "2010-yilda Kevin Systrom va Mike Krieger oddiy fotosuratlarni chiroyli qiladigan ilova yaratdilar. Burbn nomli murakkab loyihalarini soddalashtirib, faqat foto-filter funksiyasini qoldirdilar — Instagram paydo bo'ldi.\n\nIlova App Store'da jonli efirga chiqqanidan bir necha soat ichida minglab yuklab olindi. Odamlar o'z hayotlarini chiroyli kvadrat fotolar orqali bo'lisha boshladilar.\n\n2012-yilda Facebook Instagram'ni 1 milliard dollarga sotib oldi. Keyinchalik Stories, Reels va yangi funksiyalar qo'shildi. Bugun Instagram milliardlab foydalanuvchi bilan vizual madaniyatning markazi.\n\nOddiy filter — ijtimoiy revolyutsiyaga aylandi.",
    emoji: "📷",
    primaryColor: Color(0xFFE1306C),
  ),
  Story(
    title: "Zoom — pandemiya qahramoni",
    subtitle: "Video konferentsiyalar yangi reallik",
    content:
        "2011-yilda Eric Yuan Cisco'da video konferentsiyalar ustida ishlardi, ammo mahsulot foydalanuvchilarni qoniqtirmadi. U kompaniyaga o'z g'oyalarini taqdim qildi, lekin rad etildi.\n\nEric o'z kompaniyasini tuzishga qaror qildi va Zoom'ni yaratdi. Uning maqsadi oddiy edi: video muloqot oson, tez va sifatli bo'lishi kerak.\n\n2020-yilda COVID-19 pandemiyasi boshlanganda Zoom hayotiy ahamiyatga ega bo'ldi. Ish, ta'lim, oilaviy uchrashuvlar — hammasi Zoom orqali o'tdi. Foydalanuvchilar soni bir necha oyda milliardlab o'sdi.\n\nZoom texnologiya yetarligi bilan emas, balki to'g'ri vaqtda ehtiyojni qondirganligi bilan muvaffaqiyatga erishdi.",
    emoji: "📹",
    primaryColor: Color(0xFF2D8CFF),
  ),
  Story(
    title: "TikTok — qisqa videolar saltanati",
    subtitle: "15 soniyada dunyo mashhuri",
    content:
        "2016-yilda Xitoyda ByteDance kompaniyasi Douyin ilovasini yaratdi — qisqa videolar uchun platforma. 2018-yilda xalqaro versiyasi TikTok nomi bilan chiqdi.\n\nTikTok algoritmi juda kuchli edi — har bir foydalanuvchi uchun maxsus kontent tanlab berardi. Qisqa, qiziqarli videolar, musiqalar va challenge'lar orqali ilova tezda tarqaldi.\n\nFaqat bir necha yil ichida TikTok YouTube va Instagram'ga raqobatchi bo'ldi. Hatto katta platformalar ham TikTok formatini nusxalashga majbur bo'lishdi (Reels, Shorts).\n\nBugun TikTok — zamonaviy madaniyat, trendlar va yoshlar hayotining ajralmas qismi.",
    emoji: "🎭",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Docker — konteynerlar inqilobi",
    subtitle: "Dasturlarni istalgan joyda ishlatish",
    content:
        "2013-yilda Solomon Hykes va uning jamoasi dasturchilarning eng katta muammosini hal qildilar: 'Mening kompyuterimda ishlaydi, nega serverda ishlamayapti?' muammosi.\n\nDocker konteynerlar texnologiyasini soddalik bilan taqdim etdi. Dastur va uning barcha bog'liqliklari bitta paketga solinadi va istalgan joyda bir xil ishlaydi.\n\nBu DevOps va cloud computing uchun o'zgarishlar olib keldi. Microservices arxitekturasi, cloud native dasturlar — hammasi Docker bilan osonlashdi.\n\nBugun Docker zamonaviy dasturlashning standart vositasi. Millionlab kompaniyalar va dasturchlar undan foydalanadi.",
    emoji: "🐳",
    primaryColor: Color(0xFF2496ED),
  ),
  Story(
    title: "Slack — email o'rnini bosdi",
    subtitle: "Jamoa muloqoti yangi davrda",
    content:
        "2013-yilda Stewart Butterfield va jamoasi video o'yin yaratmoqda edilar. O'yin muvaffaqiyatsiz bo'ldi, ammo ular ichki muloqot uchun yaratgan vosita juda yaxshi edi.\n\nUlar o'yinni to'xtatib, muloqot platformasiga e'tibor qaratishdi — Slack tug'ildi. Email o'rniga tezkor xabarlar, kanallar, integratsiyalar va qidiruv funksiyalari.\n\nSlack tezda startaplar va texnologiya kompaniyalarida mashhur bo'ldi. U ish jarayonini tezlashtirdi va hamkorlikni osonlashtirdi.\n\n2021-yilda Salesforce Slack'ni 27.7 milliard dollarga xarid qildi. Muvaffaqiyatsiz o'yindan billion dollarlik platformagacha!",
    emoji: "💬",
    primaryColor: Color(0xFF4A154B),
  ),
  Story(
    title: "Airbnb — mehmonxonalarga alternativa",
    subtitle: "Bo'sh xonadan global turizm platformasi",
    content:
        "2007-yilda San-Fransiskoda Brian Chesky va Joe Gebbia ijara to'lay olmayotgan edilar. Shaharda konferentsiya bo'lib, mehmonxonalar band edi.\n\nUlar uylaridagi bo'sh joyni havodan to'shaklar bilan mehmonlarga taklif qilishdi va nonushta taqdim etishdi — 'Airbed & Breakfast' paydo bo'ldi.\n\nG'oya shunday oddiy ediki, dastlab investorlar rad etishdi. Ammo ular qattiq ishladi va platforma o'sdi. Odamlar o'z uylarini sayohatchilarga ijaraga bera boshladilar.\n\nBugun Airbnb global turizm industriyasini o'zgartirdi. Millionlab uylar, tajribalar va sayohat imkoniyatlari — hammasi bir platformada.",
    emoji: "🏠",
    primaryColor: Color(0xFFFF5A5F),
  ),
  Story(
    title: "Ethereum — aqlli kontrakt platformasi",
    subtitle: "Bitcoin'dan keyin keyingi qadam",
    content:
        "2013-yilda 19 yoshli Vitalik Buterin Bitcoin'ga qiziqardi, ammo uning cheklovlarini ko'rdi. U faqat pul o'tkazmasi emas, balki dasturlar ishlaydigan blockchain yaratmoqchi edi.\n\nVitalik Ethereum whitepaper'ini yozdi — aqlli kontrakt (smart contract) kontseptsiyasini taqdim etdi. Bu blockchain'da avtomatik shartnomalar ishlashi mumkinligini anglatardi.\n\n2015-yilda Ethereum ishga tushdi va tezda DeFi (markazlashtirilmagan moliya), NFT va Web3 harakatlarining asosiga aylandi.\n\nBugun Ethereum — ikkinchi eng katta kripto valyuta va butunlay yangi raqamli iqtisodiyot uchun asos.",
    emoji: "💎",
    primaryColor: Color(0xFF627EEA),
  ),
  Story(
    title: "Twitch — geymerlarga platforma",
    subtitle: "O'yin translyatsiyalaridan madaniyatgacha",
    content:
        "2011-yilda Justin Kan va Emmett Shear Justin.tv deb atalgan streaming platformasini qismlarga bo'lishdi. O'yin translatsiyalari eng ommabop bo'lganini ko'rib, Twitch.tv yaratishdi.\n\nTwitch geymerlarga o'z o'yinlarini jonli efirda ko'rsatish, tomoshabinlar bilan suhbatlashish va jamiyat tuzish imkonini berdi. Bu butunlay yangi kasbni yaratdi — professional strimerlar.\n\n2014-yilda Amazon Twitch'ni 970 million dollarga sotib oldi. Bugun Twitch nafaqat o'yinlar, balki musiqa, san'at, suhbat va ta'lim uchun ham platforma.\n\nTwitch — zamonaviy internet madaniyatining muhim qismi.",
    emoji: "🎮",
    primaryColor: Color(0xFF9146FF),
  ),
  Story(
    title: "Node.js — JavaScript serverda",
    subtitle: "Brauzerdan tashqarida JavaScript",
    content:
        "2009-yilda Ryan Dahl dasturlashda bir muammoni ko'rdi: server dasturlar sekin ishlardi, chunki ma'lumotlar kutilayotganda kod to'xtab turardi.\n\nU JavaScript'ning asinxron tabiatidan foydalanib, Node.js yaratdi. Bu JavaScript'ni server tomonida ishlatish imkonini berdi va juda tez edi.\n\nNode.js real-time ilovalar, API'lar va microservices uchun ideal edi. Express, npm va butun ekotizim rivojlandi.\n\nBugun Node.js LinkedIn, Netflix, Uber kabi kompaniyalarda ishlatiladi. JavaScript frontend va backend uchun universal tilga aylandi.",
    emoji: "🟢",
    primaryColor: Color(0xFF68A063),
  ),
  Story(
    title: "React — UI'ni boshqattan yaratish",
    subtitle: "Facebook'ning dardiga davo",
    content:
        "2011-yilda Facebook'ning frontend jamoasi muammoga duch keldi: veb-ilova katta bo'lib borgan sari kodni boshqarish qiyinlashdi. UI yangilanishlari bug'larga olib kelardi.\n\nJordan Walke komponentga asoslangan yangi yondashuvni taklif qildi. 2013-yilda Facebook React'ni ochiq manba qildi.\n\nReact'ning virtual DOM va komponent arxitekturasi web-dasturlashni o'zgartirdi. Deklarativ yondashuv kodni sodda va tushunarli qildi.\n\nBugun React — dunyodagi eng mashhur frontend kutubxona. Instagram, WhatsApp, Airbnb va minglab boshqa loyihalarda ishlatiladi.",
    emoji: "⚛️",
    primaryColor: Color(0xFF61DAFB),
  ),
  Story(
    title: "Git — versiya nazorati inqilobi",
    subtitle: "Linus'ning ikkinchi asosiy yaratmasi",
    content:
        "2005-yilda Linux yadrosi uchun ishlatiladigan versiya nazorat tizimi (BitKeeper) bepul emas bo'lib qoldi. Linus Torvalds bunga juda g'azablandi.\n\nU ikki hafta ichida o'z versiya nazorat tizimini yaratdi — Git. Maqsad oddiy edi: tez, ishonchli va tarqatilgan tizim.\n\nGit dasturchilarga parallel ishlash, branch'lar yaratish va kodni xavfsiz saqlash imkonini berdi. GitHub, GitLab va boshqalar Git asosida qurildi.\n\nBugun Git — zamonaviy dasturlashning ajralmas qismi. Deyarli har bir kod loyihasi Git bilan boshqariladi.",
    emoji: "🌿",
    primaryColor: Color(0xFFF05032),
  ),
  Story(
    title: "MongoDB — NoSQL revolyutsiyasi",
    subtitle: "Jadvallardan hujjatlarga o'tish",
    content:
        "2007-yilda 10gen kompaniyasida (keyinchalik MongoDB, Inc.) ishlaydigan dasturchilar an'anaviy SQL ma'lumotlar bazalari zamonaviy web-ilovalar uchun juda qat'iy ekanligini tushundilar.\n\nUlar MongoDB'ni yaratdilar — hujjatga asoslangan, moslashuvchan sxema bilan NoSQL bazasi. Ma'lumotlar JSON formatida saqlanardi, bu web-dasturchilar uchun tabiiy edi.\n\nMongoDB tezda startaplar va katta kompaniyalar tomonidan qabul qilindi. U tez o'zgaradigan loyihalar va katta hajmdagi ma'lumotlar uchun ideal edi.\n\nBugun MongoDB — eng mashhur NoSQL baza, milliardlab hujjatlarni saqlaydi.",
    emoji: "🍃",
    primaryColor: Color(0xFF47A248),
  ),
  Story(
    title: "Discord — geymerlar uchun muloqot",
    subtitle: "Skype va TeamSpeak o'rnini bosdi",
    content:
        "2015-yilda Jason Citron va jamoasi o'yin o'ynaganlarida ovozli muloqot sifati yomon ekanini ko'rdilar. Mavjud yechimlar qimmat yoki noqulay edi.\n\nUlar Discord'ni yaratdilar — bepul, yuqori sifatli ovozli va matnli chat platformasi. Server tizimi odamlarga o'z jamiyatlarini yaratish imkonini berdi.\n\nDiscord tezda gaming hamjamiyatida mashhur bo'ldi, ammo keyinchalik ta'lim, biznes va do'stlar guruhlari ham Discord'ni qabul qilishdi.\n\nBugun Discord yuzlab million foydalanuvchi bilan zamonaviy kommunikatsiya markazlaridan biriga aylandi.",
    emoji: "💬",
    primaryColor: Color(0xFF5865F2),
  ),
  Story(
    title: "VSCode — bepul kod muharriri",
    subtitle: "Microsoft'ning ochiq manba g'alabasi",
    content:
        "2015-yilda Microsoft dasturchilarga bepul, kuchli va tez kod muharriri taklif qildi — Visual Studio Code. Ko'pchilik Microsoft'ning bunday ochiq mahsulotiga ishonmadi.\n\nAmmo VSCode boshqacha edi: Electron'da qurilgan, minglab kengaytmalar, Git integratsiyasi va intellisense. Barchasi bepul va ochiq manba.\n\nTezda VSCode Sublime Text, Atom va boshqa muharrirlarni ortda qoldirdi. Uning ekotizimi juda kuchli o'sdi — har qanay til va framework uchun kengaytma bor.\n\nBugun VSCode — dunyodagi eng mashhur kod muharriri. 70%dan ortiq dasturchlar uni ishlatadi.",
    emoji: "📝",
    primaryColor: Color(0xFF007ACC),
  ),
  Story(
    title: "WhatsApp — oddiy xabarlar",
    subtitle: "SMS'ni tarixi qilish",
    content:
        "2009-yilda Jan Koum va Brian Acton Yahoo'dan ketgan edi va yangi g'oyalar izlashdi. Jan iPhone'ning ilk kunlarida status o'zgartirish ilovasini yaratdi.\n\nAmmo u tezda buni xabarlar ilovasiga aylantirdi. WhatsApp — 'What's up?' so'zidan olingan — oddiy, tez va ishonchli xabarlar ilovasi edi.\n\nWhatsApp SMS'ga alternativa sifatida tez tarqaldi. U bepul, internet orqali ishlardi va guruh chatlarini qo'llab-quvvatlardi.\n\n2014-yilda Facebook WhatsApp'ni 19 milliard dollarga sotib oldi. Bugun 2 milliarddan ortiq foydalanuvchi WhatsApp orqali muloqot qiladi.",
    emoji: "💚",
    primaryColor: Color(0xFF25D366),
  ),
  Story(
    title: "Stripe — online to'lovlar osonlashdi",
    subtitle: "API yordamida to'lov qabul qilish",
    content:
        "2010-yilda Patrik va Jon Collison aka-uka online to'lovlarni qabul qilish juda murakkab ekanini ko'rdilar. Integratsiya haftalar davom etardi va texnik bilim talab qilardi.\n\nUlar Stripe'ni yaratdilar — bir necha qator kod bilan to'lovni qabul qilish. API oddiy, hujjatlar aniq va ishlatish oson edi.\n\nStripe startaplar va kichik bizneslar uchun ideal bo'ldi. Lyft, Shopify, DoorDash va minglab kompaniyalar Stripe'dan foydalanadi.\n\nBugun Stripe — dunyodagi eng qimmat fintech startaplardan biri, 95 milliard dollar baholanadi.",
    emoji: "💳",
    primaryColor: Color(0xFF635BFF),
  ),
  Story(
    title: "Figma — dizayn hamkorligi",
    subtitle: "Brauzerdagi Photoshop",
    content:
        "2012-yilda Dylan Field va Evan Wallace dizayn vositalari juda qimmat va hamkorlikni qo'llab-quvvatlamasligini ko'rdilar. Photoshop va Sketch fayllar bilan ishlardi.\n\nUlar brauzerdagi dizayn vositasi yaratishga qaror qildilar — Figma. Real-time hamkorlik, versiya nazorati va oblakda saqlash.\n\nFigma dizaynerlar va dasturchilarga birgalikda ishlashni osonlashtirdi. Hech narsa o'rnatish shart emas, faqat brauzer kifoya.\n\n2022-yilda Adobe Figma'ni 20 milliard dollarga sotib olmoqchi bo'ldi. Figma zamonaviy dizayn standartiga aylandi.",
    emoji: "🎨",
    primaryColor: Color(0xFFF24E1E),
  ),
  Story(
    title: "Kubernetes — konteyner orkestri",
    subtitle: "Google'ning cloud tajribasi hammaga",
    content:
        "2014-yilda Google o'z ichki konteyner boshqaruv tizimi Borg'dan ilhomlangan holda Kubernetes'ni ochiq manba qildi.\n\nKubernetes (K8s) konteynerlarni avtomatik joylashtirish, masshtablash va boshqarishni ta'minlaydi. Bu cloud native dasturlar uchun OS kabi.\n\nDastlab murakkab ko'ringan bo'lsa-da, Kubernetes tezda industriya standartiga aylandi. AWS, Azure, Google Cloud — hammasi K8s'ni qo'llab-quvvatlaydi.\n\nBugun Kubernetes zamonaviy cloud arxitekturasining asosi. Milliardlab konteynerlar K8s ustida ishlaydi.",
    emoji: "☸️",
    primaryColor: Color(0xFF326CE5),
  ),
  Story(
    title: "PostgreSQL — ochiq manba bazasi",
    subtitle: "30 yillik ishonch",
    content:
        "1986-yilda Berkli universitetida Michael Stonebraker POSTGRES loyihasini boshladi. Maqsad — ilg'or, ishonchli va kengaytiriladigan ma'lumotlar bazasi yaratish.\n\n1996-yilda SQL qo'llab-quvvatlandi va PostgreSQL nomini oldi. Oracle va MySQL'ga alternativa sifatida ochiq manba hamjamiyati tomonidan rivojlandi.\n\nPostgreSQL juda ishonchli, ACID mos va kengaytiriladigan. Ko'plab katta kompaniyalar uni tanlamoqda — Apple, Spotify, Instagram.\n\nBugun PostgreSQL — eng mashhur ochiq manba relatsion baza. 30+ yillik tajriba va faol rivojlanish.",
    emoji: "🐘",
    primaryColor: Color(0xFF336791),
  ),
  Story(
    title: "Notion — hamma narsani bitta joyda",
    subtitle: "Yozuv, baza, wiki — bitta dasturda",
    content:
        "2016-yilda Ivan Zhao va jamoasi ishchilar juda ko'p dasturlardan foydalanayotganini ko'rdilar: yozuvlar uchun biri, loyihalar uchun ikkinchisi, hujjatlar uchun uchinchisi.\n\nUlar hamma narsani birlashtiradigan dastur yaratdilar — Notion. Bu modulli tizim: yozuvlar, jadvallar, bazalar, kanban — barchasi bir joyda.\n\nNotion dastlab startaplarda mashhur bo'ldi, keyin talabalar va individual foydalanuvchilar qo'shildi. Har kim o'z workflow'ini yarata olardi.\n\nBugun Notion — zamonaviy ishchilar va jamoalar uchun asosiy vosita. Moslashuvchanlik — uning asosiy kuchi.",
    emoji: "📋",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Unity — o'yin dvigateli",
    subtitle: "Indie dasturchilarga imkoniyat",
    content:
        "2005-yilda uch daniyalik dasturchi — David Helgason, Joachim Ante va Nicholas Francis — o'yin yaratish juda qiyin va qimmat ekanligini ko'rdilar.\n\nUlar Unity yaratdilar — oson, arzon va cross-platform o'yin dvigateli. Indie dasturchilarga professional vosita taqdim etildi.\n\nUnity bilan yaratilgan o'yinlar tezda mashhur bo'ldi: Angry Birds, Monument Valley, Pokemon GO — hammasi Unity'da qurilgan.\n\nBugun Unity — eng keng qo'llaniladigan o'yin dvigateli. Millionlab dasturchilar va yuzlab ming o'yin Unity'da yaratilmoqda.",
    emoji: "🎲",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Shopify — online do'kon osonlashdi",
    subtitle: "Texnik bilim kerak emas",
    content:
        "2004-yilda Tobias Lütke snowboard do'koni ochmoqchi bo'ldi. Ammo mavjud e-commerce platformalar juda yomon edi, shuning uchun u o'zini yaratdi.\n\nShopify — oddiy, moslashuvchan va texnik bilim talap qilmaydigan platforma bo'ldi. Har kim bir necha daqiqada onlayn do'kon ochishi mumkin edi.\n\nShopify tezda kichik bizneslar va tadbirkorlar orasida ommalashdi. Template'lar, to'lov integratsiyasi, inventory boshqaruv — hammasi tayyor.\n\nBugun Shopify milliardlab dollar savdo hajmiga erishgan. Millionlab do'konlar Shopify'da ishlaydi.",
    emoji: "🛍️",
    primaryColor: Color(0xFF96BF48),
  ),
  Story(
    title: "Swift — Apple'ning tili",
    subtitle: "Objective-C'dan zamonaviy tilga",
    content:
        "2014-yilda Apple WWDC'da yangi dasturlash tilini e'lon qildi — Swift. Chris Lattner rahbarligida yaratilgan Swift Objective-C'ning o'rnini bosish uchun mo'ljallangan edi.\n\nSwift zamonaviy, xavfsiz va tez edi. Sintaksis sodda, type safety kuchli, va interaktiv Playground dasturchilarni quvontirdi.\n\nApple ekotizimidagi dasturchilarga Swift tezda yoqdi. iOS, macOS, watchOS va tvOS uchun asosiy tilga aylandi.\n\nBugun Swift ochiq manba va faqat Apple platformalarida emas, serverda ham ishlatiladi. Zamonaviy va xavfsiz dasturlash.",
    emoji: "🦅",
    primaryColor: Color(0xFFF05138),
  ),
  Story(
    title: "Rust — xavfsizlik va tezlik",
    subtitle: "Mozilla'ning dasturlash till sovg'asi",
    content:
        "2010-yilda Mozilla'da Graydon Hoare xotira xavfsizligi muammolarini hal qiladigan til yaratdi — Rust. Sistemali dasturlashda xatoliklarning ko'pchiligi xotira bilan bog'liq edi.\n\nRust ownership va borrowing tizimi orqali compile vaqtida xatolarni aniqlaydi. Bu C++ tezligini, ammo zamonaviy xavfsizlikni taklif qildi.\n\nDasturchilarga Rust tezda yoqdi. Stack Overflow so'rovlarida Rust ko'p yillar davomida 'eng sevimli til' deb topildi.\n\nBugun Rust cloud infra, brauzerlarda (Firefox'ning qismlari), embedded tizimlar va hatto Linux yadrosida ishlatiladi.",
    emoji: "🦀",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Terraform — infra kod sifatida",
    subtitle: "Serverlarni kod bilan boshqarish",
    content:
        "2014-yilda HashiCorp kompaniyasi cloud infrastrukturani boshqarish juda qiyin ekanligini ko'rdi. Har bir provider o'z interfeysi va qoidalari bor edi.\n\nUlar Terraform yaratdilar — Infrastructure as Code (IaC) vositasi. Infrastruktura konfigurasiyasi kod sifatida yoziladi va versiya nazoratida saqlanadi.\n\nTerraform AWS, Azure, Google Cloud va 100+ providerlar bilan ishlaydi. Deklarativ yondashuv infra boshqaruvni osonlashtirdi.\n\nBugun Terraform DevOps va cloud engineering'ning asosiy vositasi. Cloud infra ko'pincha Terraform bilan boshqariladi.",
    emoji: "🏗️",
    primaryColor: Color(0xFF7B42BC),
  ),
  Story(
    title: "Vue.js — progressiv framework",
    subtitle: "Bir odamdan global framework'ga",
    content:
        "2014-yilda Evan You Google'da ishlayotganida React va Angular'ning murakkabligidan charchadi. U oddiy, progressiv framework yaratishga qaror qildi.\n\nVue.js boshlang'ich uchun juda oson, ammo murakkab ilovalar uchun ham yetarli kuchli edi. Template sintaksis oddiy va tushunarli.\n\nEvan Vue'ni yakka o'zi rivojlantirdi va ochiq manba qildi. Hamjamiyat tezda qo'llab-quvvatladi va katta ekotizim paydo bo'ldi.\n\nBugun Vue.js Alibaba, GitLab, Adobe kabi kompaniyalarda ishlatiladi. Bir odamning loyihasi global framework'ga aylandi.",
    emoji: "💚",
    primaryColor: Color(0xFF42B883),
  ),
  Story(
    title: "Redis — tezkor ma'lumotlar bazasi",
    subtitle: "In-memory data store",
    content:
        "2009-yilda Salvatore Sanfilippo o'z startapi uchun tez kesh tizimi kerak edi. Mavjud yechimlar moslashuvchan emas yoki qimmat edi.\n\nU Redis yaratdi — in-memory key-value store. Ma'lumotlar operativ xotirada saqlanadi, shuning uchun juda tez.\n\nRedis oddiy edi, ammo kuchli: string, list, set, hash — turli ma'lumot turlari. Pub/sub, stream va boshqa funksiyalar ham qo'shildi.\n\nBugun Redis caching, session boshqaruvi, real-time analytics uchun eng mashhur vosita. Millionlab kompaniyalar Redis'dan foydalanadi.",
    emoji: "⚡",
    primaryColor: Color(0xFFDC382D),
  ),
  Story(
    title: "GraphQL — API so'rovlari yangicha",
    subtitle: "Facebook'ning REST muammosiga yechim",
    content:
        "2012-yilda Facebook mobile ilovalarida REST API'lari juda sekin ishlardi. Har safar ko'p ma'lumot yuklanardi yoki bir necha so'rov kerak bo'lardi.\n\nLee Byron va jamoasi GraphQL yaratdilar — mijoz o'ziga kerakli ma'lumotni aniq belgilaydi. Bir so'rovda barcha kerakli ma'lumot.\n\n2015-yilda GraphQL ochiq manba qilindi. GitHub, Shopify, Netflix va boshqalar tezda qabul qilishdi.\n\nBugun GraphQL — zamonaviy API arxitekturasining asosiy qismi. REST'ga moslashuvchan alternativa.",
    emoji: "🔷",
    primaryColor: Color(0xFFE10098),
  ),
  Story(
    title: "TensorFlow — AI uchun asos",
    subtitle: "Google'ning machine learning kutubxonasi",
    content:
        "2015-yilda Google o'zining ichki machine learning tizimi DistBelief asosida TensorFlow'ni ochiq manba qildi.\n\nTensorFlow neyron tarmoqlarni qurishni osonlashtirdi. API oddiy, ammo juda kuchli — tasvirni aniqlashdan natural language processing gacha.\n\nTadqiqotchilar va kompaniyalar TensorFlow'ni tezda qabul qildilar. Keras integratsiyasi uni yanada oson qildi.\n\nBugun TensorFlow AI rivojlanishining asosi. Millionlab modellar TensorFlow bilan o'qitilgan.",
    emoji: "🧠",
    primaryColor: Color(0xFFFF6F00),
  ),
  Story(
    title: "Angular — Google'ning framework'i",
    subtitle: "Enterprise ilovalar uchun to'liq yechim",
    content:
        "2010-yilda Miško Hevery Google'da ishlab turgan loyihada kod boshqaruv muammosini hal qilish uchun AngularJS yaratdi.\n\nAngularJS ikki-yo'nalishli data binding va dependency injection bilan web-dasturlashni o'zgartirdi. Frontend rivojlanishi tezlashdi.\n\n2016-yilda butunlay qayta yozilgan Angular 2+ chiqdi. TypeScript, komponent arxitektura va kuchli CLI bilan.\n\nBugun Angular katta enterprise ilovalar uchun tanlov. Microsoft, IBM va ko'plab korporatsiyalar Angular ishlatadi.",
    emoji: "🅰️",
    primaryColor: Color(0xFFDD0031),
  ),
  Story(
    title: "Flutter — bir kod, ko'p platforma",
    subtitle: "Google'ning mobil UI framework'i",
    content:
        "2017-yilda Google Flutter'ni taqdim etdi — Dart tilida yozilgan cross-platform UI framework. Maqsad: bir kod bilan iOS, Android, web va desktop uchun ilova yaratish.\n\nFlutter'ning o'ziga xos rendering mexanizmi yuqori unumdorlik va chiroyli animatsiyalarni ta'minladi. Hot reload xususiyati rivojlanishni tezlashtirdi.\n\nAlibaba, BMW, eBay kabi kompaniyalar Flutter'ni qabul qildi. Hamjamiyat tez o'sdi va minglab paketlar yaratildi.\n\nBugun Flutter — eng mashhur cross-platform framework. Bir kod bilan hamma joyda ishlash — bu Flutter afzalligi.",
    emoji: "🦋",
    primaryColor: Color(0xFF02569B),
  ),
  Story(
    title: "Tailwind CSS — utility-first CSS",
    subtitle: "Klasslar bilan tez dizayn",
    content:
        "2017-yilda Adam Wathan va Steve Schoger CSS framework'laridan charchagan edilar. Bootstrap va boshqalar juda og'ir va moslashuvchan emas edi.\n\nUlar Tailwind CSS yaratdilar — utility-first yondashuv. Tayyor komponentlar o'rniga kichik klasslar bilan istalgan dizaynni yaratish.\n\nDastlab g'alati ko'ringan bo'lsa-da, dasturchilarga tezlik va moslashuvchanlik yoqdi. Purge funksiyasi faqat ishlatilgan klasslarni qoldirdi.\n\nBugun Tailwind CSS — zamonaviy web-dizaynning standarti. GitHub, Shopify va minglab loyihalar Tailwind ishlatadi.",
    emoji: "🎨",
    primaryColor: Color(0xFF06B6D4),
  ),
  Story(
    title: "TypeScript — JavaScript'ga tiplar",
    subtitle: "Microsoft'ning JavaScript yaxshilanishi",
    content:
        "2012-yilda Microsoft'da Anders Hejlsberg katta JavaScript loyihalarida tip xatolari ko'p bo'lishini ko'rdi. JavaScript dinamik til edi va compile vaqtida xatolarni aniqlash qiyin edi.\n\nU TypeScript yaratdi — JavaScript'ga statik tiplar qo'shadigan superset. Kod yozishda xatolar darhol ko'rinadi va IDE yaxshi qo'llab-quvvatlaydi.\n\nAngular 2+ TypeScript'ni rasman qabul qilgandan keyin, React va Vue jamiyatlari ham qo'shildi.\n\nBugun TypeScript katta loyihalar uchun standart. JavaScript'ning kelajagi TypeScript bilan bog'liq.",
    emoji: "📘",
    primaryColor: Color(0xFF3178C6),
  ),
  Story(
    title: "Sass — CSS preprocessor",
    subtitle: "CSS'ni dasturlash tiliga aylantirish",
    content:
        "2006-yilda Hampton Catlin CSS'ning takrorlanishi va moslashuvchansizligidan charchagan edi. U Sass (Syntactically Awesome Style Sheets) yaratdi.\n\nSass CSS'ga o'zgaruvchilar, nesting, mixin va funksiyalarni qo'shdi. Bu CSS'ni dasturlash tiliga aylantirdi va kodni qayta ishlatish oson bo'ldi.\n\nSCSS sintaksisi qo'shilgandan keyin Sass ommaviy qabul topdi. Bootstrap 4 ham Sass'ga o'tdi.\n\nBugun Sass zamonaviy CSS rivojlanishining ajralmas qismi. Deyarli barcha CSS framework'lar Sass/SCSS ishlatadi.",
    emoji: "💅",
    primaryColor: Color(0xFFCC6699),
  ),
  Story(
    title: "Webpack — module bundler",
    subtitle: "JavaScript fayllarni birlashtrish",
    content:
        "2012-yilda Tobias Koppers JavaScript modullarni boshqarish va birlashtrish uchun Webpack yaratdi. O'sha paytda frontend build vositalari juda cheklangan edi.\n\nWebpack nafaqat JavaScript, balki CSS, rasmlar va boshqa assetlarni ham boshqaradi. Loader va plugin tizimi uni juda kuchli qildi.\n\nWebpack React, Angular va Vue'ning rasmiy build vositasiga aylandi. Code splitting va lazy loading kabi xususiyatlar qo'shildi.\n\nBugun Webpack zamonaviy frontend rivojlanishning asosi. Millionlab loyihalar Webpack bilan build qilinadi.",
    emoji: "📦",
    primaryColor: Color(0xFF8DD6F9),
  ),
  Story(
    title: "Next.js — React framework'i",
    subtitle: "Server-side rendering React uchun",
    content:
        "2016-yilda Vercel (o'sha paytda Zeit) Next.js'ni yaratdi. React ilovalar client-side rendering bilan sekin yuklangan va SEO uchun yomon edi.\n\nNext.js server-side rendering, static generation va API routes'ni oson qildi. Zero-config yondashuv dasturchilarga yoqdi.\n\nNext.js 13 bilan App Router va Server Components qo'shildi — React'ning kelajagi.\n\nBugun Next.js — eng mashhur React framework. Nike, Netflix, Hulu va minglab kompaniyalar Next.js ishlatadi.",
    emoji: "▲",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Vite — tezkor build vositasi",
    subtitle: "Webpack'dan tezroq alternativa",
    content:
        "2020-yilda Evan You (Vue.js yaratuvchisi) frontend build vositalarining sekinligidan charchadi. U Vite yaratdi — ES modules va esbuild asosida.\n\nVite development server darhol ishga tushadi va hot reload juda tez. Production build ham esbuild tufayli tezroq.\n\nVite React, Vue, Svelte va boshqa framework'lar bilan ishlaydi. Sodda konfiguratsiya va yuqori unumdorlik.\n\nBugun Vite tezda mashhurlikka erishmoqda. Ko'plab loyihalar Webpack'dan Vite'ga o'tmoqda.",
    emoji: "⚡",
    primaryColor: Color(0xFF646CFF),
  ),
  Story(
    title: "ESLint — JavaScript linter",
    subtitle: "Kod sifatini oshirish",
    content:
        "2013-yilda Nicholas Zakas JavaScript kodida xatolarni topish va kod sifatini ta'minlash uchun ESLint yaratdi.\n\nESLint to'liq sozlanishi mumkin — har bir qoida yoqilishi yoki o'chirilishi mumkin. Plugin tizimi React, Vue, TypeScript uchun maxsus qoidalar qo'shadi.\n\nESLint dasturchilarga umumiy xatolarni darhol topishga yordam beradi. Prettier bilan birgalikda kod formatlash va sifat standartini ta'minlaydi.\n\nBugun ESLint — har bir JavaScript loyihasida mavjud. Kod sifatining asosiy qorovuli.",
    emoji: "🔍",
    primaryColor: Color(0xFF4B32C3),
  ),
  Story(
    title: "Prettier — kod formatlovchi",
    subtitle: "Kod uslubi bahslari tugadi",
    content:
        "2017-yilda James Long kod uslubi bahslaridan charchagan edi. Jamoa a'zolari tab vs space, qatorlar uzunligi va boshqa kichik narsalarda bahslashardi.\n\nU Prettier yaratdi — opinionated kod formatlovchi. Prettier kodni avtomatik ravishda bir xil uslubda formatlaydi.\n\nPrettier JavaScript, TypeScript, CSS, HTML va ko'plab tillarni qo'llab-quvvatlaydi. Save qilganda avtomatik formatlash — eng yoqimli xususiyat.\n\nBugun Prettier — deyarli har bir loyihada. Kod uslubi bahslari tarixi qoldi.",
    emoji: "✨",
    primaryColor: Color(0xFFF7B93E),
  ),
  Story(
    title: "Jest — testing framework",
    subtitle: "Facebook'ning JavaScript test vositasi",
    content:
        "2014-yilda Facebook JavaScript testlarini yozish va bajarish uchun Jest yaratdi. Mavjud test framework'lari sekin va murakkab edi.\n\nJest zero-config, snapshot testing va parallel test bajarish bilan keladi. Mock funksiyalar va coverage reporting ham o'rnatilgan.\n\nJest React, Vue, Angular va har qanday JavaScript loyihasi uchun ishlaydi. Sodda va tez.\n\nBugun Jest — eng mashhur JavaScript testing framework. Millionlab test Jest bilan yozilgan.",
    emoji: "🃏",
    primaryColor: Color(0xFFC21325),
  ),
  Story(
    title: "Cypress — E2E testing",
    subtitle: "Selenium'ga zamonaviy alternativa",
    content:
        "2014-yilda Brian Mann web ilovalarni test qilish juda qiyin ekanligini ko'rdi. Selenium sekin va ishonchsiz edi.\n\nU Cypress yaratdi — zamonaviy E2E testing vositasi. Cypress brauzerda to'g'ridan-to'g'ri ishlaydi va real-time reload bilan keladi.\n\nCypress testlarni yozish oddiy va debuging oson. Video va screenshot avtomatik olinadi.\n\nBugun Cypress — zamonaviy E2E testing'ning standarti. Minglab kompaniyalar Cypress bilan test qiladi.",
    emoji: "🌲",
    primaryColor: Color(0xFF17202C),
  ),
  Story(
    title: "Svelte — kompilyatsiya framework'i",
    subtitle: "Virtual DOM'siz framework",
    content:
        "2016-yilda Rich Harris yangi yondashuv sinadi: agar framework runtime'da emas, balki build vaqtida ishlasa nima bo'ladi?\n\nSvelte tug'ildi — kod compile vaqtida vanilla JavaScript'ga aylanadi. Bu virtual DOM'ga ehtiyoj yo'q va juda tez.\n\nSvelte sintaksisi oddiy va tushunarli. Boilerplate kod kam, reactivity avtomatik.\n\nBugun Svelte mashhurlikka erishmoqda. SvelteKit bilan to'liq full-stack framework'ga aylandi.",
    emoji: "🔥",
    primaryColor: Color(0xFFFF3E00),
  ),
  Story(
    title: "Deno — zamonaviy JavaScript runtime",
    subtitle: "Node.js yaratuvchisining yangi loyihasi",
    content:
        "2018-yilda Ryan Dahl (Node.js yaratuvchisi) Node.js'ning xatolarini tan oldi va Deno yaratdi.\n\nDeno TypeScript'ni native qo'llab-quvvatlaydi, xavfsizlik default ravishda yoqilgan va modern API'larga ega.\n\nDeno URL'dan to'g'ridan-to'g'ri import qilish mumkin — npm kerak emas. Built-in tool'lar formatter, linter va test runner'ni o'z ichiga oladi.\n\nBugun Deno Node.js'ga zamonaviy alternativa. Deno Deploy bilan edge computing ham oson.",
    emoji: "🦕",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Bun — tezkor JavaScript runtime",
    subtitle: "Node.js va Deno'ga qaraganda tezroq",
    content:
        "2022-yilda Jarred Sumner JavaScript ekotizimi sekin ekanligini ko'rdi. U Zig tilida Bun yaratdi — juda tez JavaScript runtime.\n\nBun JavaScriptCore engine'dan foydalanadi (Safari'ning engine'i) va V8'dan tezroq. Built-in bundler, transpiler va package manager.\n\nBun npm paketlarini native qo'llab-quvvatlaydi va Node.js bilan mos. Ammo hamma narsa tezroq — package install, script bajarish, test run.\n\nBugun Bun kuchli alternativa sifatida o'smoqda. Tezlik — uning asosiy afzalligi.",
    emoji: "🥟",
    primaryColor: Color(0xFFFBF0DF),
  ),
  Story(
    title: "Astro — static site generator",
    subtitle: "Zero JavaScript by default",
    content:
        "2021-yilda Fred K. Schott va jamoasi web sahifalar juda og'ir ekanligini ko'rdilar. Har bir sahifa megabaytlab JavaScript yuklaydi.\n\nUlar Astro yaratdilar — default holatda zero JavaScript. Faqat kerak bo'lganda interactive qismlar hydrate qilinadi.\n\nAstro React, Vue, Svelte va boshqa framework komponentlarini birgalikda ishlatish imkonini beradi. Content-driven saytlar uchun ideal.\n\nBugun Astro bloglar, marketing saytlar va documentation uchun mashhur. Tez, oddiy va SEO-friendly.",
    emoji: "🚀",
    primaryColor: Color(0xFFFF5D01),
  ),
  Story(
    title: "Remix — full-stack React framework",
    subtitle: "Web fundamentals qaytdi",
    content:
        "2020-yilda Ryan Florence va Michael Jackson (React Router yaratuvchilari) Remix yaratdilar — web fundamentallariga asoslangan framework.\n\nRemix server-side rendering, progressive enhancement va nested routes bilan keladi. Form'lar HTML form kabi ishlaydi.\n\nRemix data loading'ni oson qiladi va error handling built-in. Shopify Remix'ni sotib oldi va hydrogen framework yaratdi.\n\nBugun Remix Next.js'ga kuchli alternativa. Web standartlarga hurmat — Remix falsafasi.",
    emoji: "💿",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Prisma — zamonaviy ORM",
    subtitle: "Ma'lumotlar baza bilan oson ishlash",
    content:
        "2019-yilda Prisma Labs ma'lumotlar baza bilan ishlashni osonlashtirish uchun Prisma yaratdi.\n\nPrisma type-safe, auto-complete qo'llab-quvvatlaydi va migration'lar oddiy. Schema bitta faylda yoziladi va client avtomatik generate bo'ladi.\n\nPrisma PostgreSQL, MySQL, SQLite, MongoDB va boshqa bazalar bilan ishlaydi. Developer experience ajoyib.\n\nBugun Prisma — zamonaviy Node.js loyihalarida mashhur ORM. TypeScript bilan birgalikda ideal.",
    emoji: "🔷",
    primaryColor: Color(0xFF2D3748),
  ),
  Story(
    title: "Supabase — ochiq manba Firebase",
    subtitle: "Backend as a Service",
    content:
        "2020-yilda Paul Copplestone va Ant Wilson Firebase'ga ochiq manba alternativa yaratdilar — Supabase.\n\nSupabase PostgreSQL asosida qurilgan, real-time subscriptions, authentication va storage bilan keladi. SQL ishlatiш mumkin.\n\nSupabase ochiq manba va self-host qilish mumkin. API avtomatik generate bo'ladi va client kutubxonalar oddiy.\n\nBugun Supabase tezda o'smoqda. Firebase'dan ko'chish oson va xususiyatlar ko'proq.",
    emoji: "⚡",
    primaryColor: Color(0xFF3ECF8E),
  ),
  Story(
    title: "Vercel — frontend deployment",
    subtitle: "Git push'dan production'ga",
    content:
        "2015-yilda Guillermo Rauch (Socket.io yaratuvchisi) frontend deployment'ni osonlashtirish uchun Vercel (o'sha paytda Zeit) yaratdi.\n\nVercel Git bilan integratsiya qilingan — push qilsangiz avtomatik deploy bo'ladi. Preview deployment har bir pull request uchun.\n\nVercel edge network global va juda tez. Next.js'ning rasmiy home'i.\n\nBugun Vercel — frontend deployment'ning standartі. Millionlab sayt Vercel'da host qilingan.",
    emoji: "▲",
    primaryColor: Color(0xFF000000),
  ),
  Story(
    title: "Netlify — JAMstack platform",
    subtitle: "Static site deployment osonlashdi",
    content:
        "2014-yilda Mathias Biilmann va Chris Bach static saytlarni deploy qilish uchun Netlify yaratdilar.\n\nNetlify JAMstack arxitekturasini ommalashrtirdi. Git-based workflow, continuous deployment va serverless functions.\n\nNetlify Forms, Identity va Analytics kabi qo'shimcha xizmatlar ham bor. Bepul tier juda saxiy.\n\nBugun Netlify — static va JAMstack saytlar uchun eng mashhur platform. Nike, Verizon kabi kompaniyalar Netlify ishlatadi.",
    emoji: "🌐",
    primaryColor: Color(0xFF00C7B7),
  ),
  Story(
    title: "Cloudflare Workers — edge computing",
    subtitle: "Serverlarni dunyoga yaqinlashtirish",
    content:
        "2017-yilda Cloudflare o'z global network'ida kod ishlatish imkonini berdi — Workers.\n\nWorkers V8 isolates'da ishlaydi va millisoniyalarda ishga tushadi. Cold start yo'q va global — har bir Cloudflare data center'da.\n\nWorkers KV, Durable Objects va R2 storage bilan to'liq backend yaratish mumkin. Narx faqat ishlatilgan resurslar uchun.\n\nBugun Cloudflare Workers edge computing'ning lideri. Serverless'ning kelajagi edge'da.",
    emoji: "⚡",
    primaryColor: Color(0xFFF38020),
  ),
  Story(
    title: "Pnpm — tez package manager",
    subtitle: "Npm va Yarn'dan tejamkorroq",
    content:
        "2017-yilda Zoltan Kochan npm'ning xotira va disk joyini ko'p ishlatishini ko'rdi. U pnpm yaratdi — content-addressable storage bilan.\n\nPnpm paketlarni bir marta saqlaydi va hard-link orqali ulashadi. Bu disk joyini va vaqtni tejaydi.\n\nPnpm monorepo'lar uchun ham yaxshi — workspace'lar native qo'llab-quvvatlanadi. Npm va Yarn'ga to'liq mos.\n\nBugun pnpm mashhurlikka erishmoqda. Vue.js, Vite va ko'plab loyihalar pnpm'ga o'tmoqda.",
    emoji: "📦",
    primaryColor: Color(0xFFF69220),
  ),
  Story(
    title: "Turbopack — yangi bundler",
    subtitle: "Webpack'dan 700x tezroq",
    content:
        "2022-yilda Vercel (Next.js) Turbopack'ni e'lon qildi — Rust'da yozilgan bundler. Webpack yaratuvchisi Tobias Koppers ham jamoada.\n\nTurbopack incremental computation asosida — faqat o'zgargаn qismlar qayta build qilinadi. Bu uni juda tez qiladi.\n\nTurbopack Next.js 13'da experimental qo'llab-quvvatlandi. Kelajakda Webpack'ni to'liq almashtirishi rejalashtirilgan.\n\nBugun Turbopack rivojlanishda. Webpack'ning kelajagi — Turbopack.",
    emoji: "⚡",
    primaryColor: Color(0xFF0096FF),
  ),
  Story(
    title: "Wasm — brauzerdagi binary",
    subtitle: "JavaScript'dan tezroq kod",
    content:
        "2015-yilda W3C WebAssembly (Wasm) ustida ishlay boshladi. Maqsad: brauzerlarda native tezlikda kod ishlatish.\n\nWasm binary format — C, C++, Rust kabi tillardan compile qilinadi. JavaScript bilan yonma-yon ishlaydi.\n\nWasm gaming, video editing, encryption kabi og'ir vazifalar uchun ideal. Figma, Google Earth, AutoCAD Wasm ishlatadi.\n\nBugun Wasm browserdan tashqarida ham — Wasmer va Wasmtime server'da ham ishlaydi.",
    emoji: "🔧",
    primaryColor: Color(0xFF654FF0),
  ),
  Story(
    title: "Electron — desktop ilovalar",
    subtitle: "Web texnologiya bilan desktop",
    content:
        "2013-yilda GitHub Atom muharririni yaratish uchun Electron (o'sha paytda Atom Shell) yaratdi.\n\nElectron Chromium va Node.js'dan foydalanadi. Web texnologiya bilan Windows, Mac va Linux uchun desktop ilova yaratish mumkin.\n\nVSCode, Slack, Discord, Figma — hammasi Electron'da qurilgan. JavaScript bilsangiz desktop ilova yaratishingiz mumkin.\n\nBugun Electron — cross-platform desktop ilovalar uchun eng mashhur framework. Minglab ilova Electron'da.",
    emoji: "⚛️",
    primaryColor: Color(0xFF47848F),
  ),
  Story(
    title: "Tauri — Electron'ga alternativa",
    subtitle: "Yengil desktop ilovalar",
    content:
        "2019-yilda Tauri jamoasi Electron'ning og'irligidan charchadi. Har bir ilova Chromium'ni o'z ichiga oladi.\n\nTauri Rust'da yozilgan va tizimning o'z webview'ini ishlatadi. Bu ilovalarni 10-100 marta kichikroq qiladi.\n\nTauri xavfsiz — Rust'ning memory safety va sandboxing. Frontend uchun istalgan framework ishlatish mumkin.\n\nBugun Tauri tezda o'smoqda. 1Password, Anytype kabi ilovalar Tauri'ga o'tmoqda.",
    emoji: "🦀",
    primaryColor: Color(0xFFFFC131),
  ),
  Story(
    title: "HTTP/3 — internetning yangi versiyasi",
    subtitle: "TCP'dan QUIC'ga o'tish",
    content:
        "2018-yilda IETF HTTP/3'ni standartlashtira boshladi. HTTP/2 TCP ustida ishlardi va head-of-line blocking muammosi bor edi.\n\nHTTP/3 QUIC protokolidan foydalanadi — UDP asosida. Bu tezroq connection, kam latency va mobil tarmoqlarda yaxshi.\n\nCloudflare, Google, Facebook HTTP/3'ni qo'llab-quvvatlaydi. Brauzerlar ham qo'shildi.\n\nBugun HTTP/3 keng tarqalmoqda. Internetning kelajagi QUIC ustida.",
    emoji: "🌐",
    primaryColor: Color(0xFF005A9C),
  ),
  Story(
    title: "WebRTC — real-time kommunikatsiya",
    subtitle: "Peer-to-peer video va audio",
    content:
        "2011-yilda Google WebRTC loyihasini boshladi. Maqsad: brauzerda to'g'ridan-to'g'ri audio, video va data almashish.\n\nWebRTC peer-to-peer connection — server orqali emas. Bu latency'ni kamaytiradi va bandwidthni tejaydi.\n\nZoom, Google Meet, Discord — WebRTC ishlatadi. Screen sharing, file transfer ham WebRTC orqali.\n\nBugun WebRTC real-time kommunikatsiya standarti. Har bir zamonaviy brauzer WebRTC qo'llab-quvvatlaydi.",
    emoji: "📞",
    primaryColor: Color(0xFF333333),
  ),
  Story(
    title: "PWA — progressive web apps",
    subtitle: "Web ilovalar native kabi",
    content:
        "2015-yilda Google progressive web app kontseptsiyasini taqdim etdi. Maqsad: web ilovalarni native ilova kabi qilish.\n\nPWA service worker'lar bilan offline ishlaydi, push notification'lar qo'llab-quvvatlanadi va home screen'ga qo'shish mumkin.\n\nTwitter, Pinterest, Starbucks PWA yaratdi va engagement oshdi. Install qilish kerak emas — faqat saytga kiring.\n\nBugun PWA keng tarqalmoqda. Web va native orasidagi chegara yo'qolmoqda.",
    emoji: "📱",
    primaryColor: Color(0xFF5A0FC8),
  ),
  Story(
    title: "WebGPU — 3D grafiklar brauzеrda",
    subtitle: "WebGL'dan keyingi avlod",
    content:
        "2017-yilda W3C WebGPU ustida ishlay boshladi. WebGL eski va zamonaviy GPU'lardan to'liq foydalanmaydi.\n\nWebGPU zamonaviy grafik API'lar (Vulkan, Metal, DirectX 12) asosida. GPU hisoblash ham qo'llab-quvvatlanadi.\n\nWebGPU bilan brauzerda yuqori sifatli 3D o'yinlar, simulatsiyalar va machine learning mumkin.\n\nBugun WebGPU Chrome va Safari'da experimental. Kelajak — brauzerda native sifatli grafikalar.",
    emoji: "🎮",
    primaryColor: Color(0xFF005A9C),
  ),
  Story(
    title: "Jamstack — zamonaviy web arxitekturasi",
    subtitle: "JavaScript, API va Markup",
    content:
        "2016-yilda Netlify CEO'si Mathias Biilmann Jamstack atamасini taqdim etdi. Bu yangi web arxitekturasi edi.\n\nJamstack: JavaScript frontend, API'lar orqali backend, Markup pre-rendered. Server-side rendering yo'q.\n\nJamstack tez, xavfsiz va arzon. CDN'da static fayllar, API'lar alohida scale qilinadi.\n\nBugun Jamstack keng qabul qilindi. Gatsby, Next.js, Hugo — hammasi Jamstack ekotizimida.",
    emoji: "🥞",
    primaryColor: Color(0xFFF0047F),
  ),
];
