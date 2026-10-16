import '../models/suspect.dart';

/// DAVA 001 — Kadikoy Apartman Cinayeti supheliler (ZOR).
///
/// GUVENLIK NOTU: Bu dosya oyunun cozumunu iceriyor.
/// secret / truth / lies / isKiller alanlari backend'e de tasinmali.
const List<Suspect> dava001Supheliler = [
  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_001',
    name: 'Murat Kaya',
    age: 42,
    job: 'Apartman yöneticisi',
    description:
        'On iki yıldır aynı apartmanda oturuyor, sekiz yıldır yöneticilik '
        'yapıyor. Herkesin kapısını, saatini, alışkanlığını bilir.',
    relationToVictim:
        'Aidat borcu yüzünden Selin ile iki kez tartışmış; komşular duymuş.',
    statedAlibi:
        'Olay gecesi saat 21.00\'den sonra evinden hiç çıkmadığını, '
        'eşiyle televizyon izlediğini söylüyor.',
    personality: 'Kontrollü, çabuk sinirlenen, şüpheci, otorite meraklısı',
    speakingStyle:
        'Kısa ve savunmacı cevaplar verir. Sıkıştırılınca sesini yükseltir, '
        'konuyu apartman kurallarına ve aidatlara getirir. "Bakın beyefendi" '
        'gibi kalıplar kullanır.',
    secret:
        'Kamera kayıt cihazının kablosunu 22.00 civarında kendisi çıkardı. '
        'Sebebi cinayet değil: apartmanın ortak elektriğinden kendi dükkânına '
        'kaçak hat çekmişti ve kayıtta görünmesini istemedi.',
    truth:
        'Cinayeti işlemedi. 22.05 civarında merdiven sahanlığında sigara içti '
        've üçüncü kattan yüksek sesle bir tartışma duydu. Kadın sesleriydi '
        'ama kelimeleri seçemedi. Kamera meselesi ortaya çıkar korkusuyla '
        'susuyor.',
    lies: [
      'Olay gecesi evinden hiç çıkmadığını söylüyor.',
      'Kamera cihazına kimsenin dokunmadığını, cihazın eskidiğini iddia ediyor.',
    ],
    knows: [
      'Selin ile aidat yüzünden tartıştığını.',
      '22.05 civarında üçüncü kattan kadın seslerinin geldiğini.',
      'Ela Yılmaz\'ın son aylarda apartmana sık sık geldiğini.',
      'Deniz Ergin\'in eskiden Selin\'e geldiğini, son aylarda görünmediğini.',
      'Nermin Hanım\'ın Selin\'e sık sık uğradığını.',
    ],
    doesNotKnow: [
      'Cinayetin nasıl işlendiğini.',
      'Şirket hesabındaki para hareketlerini.',
      'Selin\'in gönderilmemiş mesaj taslağını.',
      'Ela ile Selin arasındaki ortaklık kavgasının içeriğini.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_002',
    name: 'Deniz Ergin',
    age: 33,
    job: 'Müzisyen',
    description:
        'Selin ile üç yıl birlikte olmuş, sekiz ay önce ayrılmışlar. '
        'Ayrılık sonrası birkaç kez barışma girişiminde bulunmuş.',
    relationToVictim: 'Eski sevgili.',
    statedAlibi:
        'Olay gecesi Kadıköy\'de bir barda sahne aldığını, akşam 20.00\'den '
        'gece 01.00\'e kadar orada olduğunu söylüyor.',
    personality:
        'Duygusal, dağınık, kendini sürekli açıklama ihtiyacı duyan, kırılgan',
    speakingStyle:
        'Uzun ve savrulan cümleler kurar, konuyu geçmişe getirir. '
        'Suçlandığını hissedince sitem eder, bazen sesi titrer.',
    secret:
        'Sahneye çıkmadan önce, 21.50 civarında Selin\'in kapısına gitti. '
        'Zile basamadan vazgeçip geri döndü. Kapı zili görüntüsündeki kişi o. '
        'Bara 22.05\'te vardı, 20.00\'den beri orada olduğu doğru değil.',
    truth:
        'Cinayeti işlemedi. 22.20\'de barda sahnedeydi, on beş kişi gördü. '
        'Ama 21.50\'deki ziyaretini ve barda geç kaldığını sakladığı için '
        'şüphe çekiyor.',
    lies: [
      'Akşam 20.00\'den beri barda olduğunu söylüyor.',
      'Olay gecesi apartmanın yakınına hiç gitmediğini söylüyor.',
      'Selin ile son bir aydır hiç konuşmadığını iddia ediyor.',
    ],
    knows: [
      'Selin\'in son haftalarda iş yerinde ciddi bir sorun yaşadığını.',
      'Selin\'in "ortaklıktan çıkacağım" dediğini.',
      'Ela Yılmaz\'ı tanıdığını ve Selin\'in ondan şüphelendiğini.',
      '21.50\'de kapıya gidip geri döndüğünü.',
    ],
    doesNotKnow: [
      'Şirket hesabından yapılan ödemelerin ayrıntılarını.',
      'Kamera kaydındaki boşluğun sebebini.',
      'O gece Selin\'in eve kimi aldığını.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_003',
    name: 'Ela Yılmaz',
    age: 27,
    job: 'Grafik tasarımcı, Selin\'in iş ortağı',
    description:
        'Selin ile üniversiteden arkadaşlar. İki yıl önce birlikte küçük bir '
        'tasarım ofisi kurmuşlar. Ofisin muhasebe işlerini Ela yürütüyor.',
    relationToVictim: 'İş ortağı ve uzun yıllardır arkadaşı.',
    statedAlibi:
        'Olay gecesi evinde olduğunu, erken yattığını söylüyor. '
        'Bunu doğrulayacak kimse yok ama telefonunun evde olduğunu '
        'gösterebileceğini belirtiyor.',
    personality:
        'Soğukkanlı, hazırlıklı, ölçülü; panikledikçe daha fazla ayrıntı anlatır',
    speakingStyle:
        'Sakin, düzgün ve kibar konuşur. Cevapları hazırlıklı gibidir. '
        'Sıkıştığında Selin\'e övgüyle konuyu yumuşatmaya çalışır.',
    secret:
        'Yedi aydır ofisin yönetici hesabından açtığı "muhasebe_2" '
        'kullanıcısıyla sahte bir tedarikçiye para aktarıyordu. Selin bunu '
        'fark etti ve muhasebeye gideceğini söyledi.',
    truth:
        'KATİL. Telefonunu ve televizyonu açık bırakıp evden çıktı, akıllı '
        'saati kolundaydı. 22.15 civarında Selin\'in evine geldi, kahve '
        'içtiler; kendi fincanını yıkayıp rafa koydu. Tartışma büyüdü, '
        '22.47\'de boğuşma sırasında duvar saati düştü. Selin\'i boğdu. '
        'İnce bordo mohair hırkasından lifler kurbanın tırnaklarına takıldı. '
        '23.05 civarında evden çıktı, 23.21\'de eve döndü. Hırkayı sonradan '
        'ortadan kaldırdı.',
    lies: [
      'Olay gecesi evden hiç çıkmadığını söylüyor.',
      'Selin ile aralarında hiçbir sorun olmadığını iddia ediyor.',
      'Şirket hesabındaki ödemeleri dış muhasebeci Barış\'ın girdiğini ima ediyor.',
      'Selin\'in evinde en son iki hafta önce bulunduğunu söylüyor.',
    ],
    knows: [
      'Şirket hesabındaki ödemelerin gerçeğini.',
      'Selin\'in muhasebeye gitmeyi planladığını.',
      'O gece Selin\'in evinde kahve içildiğini.',
      'Selin\'in Deniz ile arasının kötü olduğunu.',
    ],
    doesNotKnow: [
      'Kapı zilinin 21.52\'de Deniz\'i kaydettiğini.',
      'Yöneticinin kamera kablosunu çıkardığını.',
      'Yöneticinin merdivende tartışmayı duyduğunu.',
      'Adli tıp raporunda yün liflerinin bulunduğunu.',
      'Akıllı saatinin bağlantı kaydının incelendiğini.',
    ],
    isKiller: true,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_004',
    name: 'Nermin Aksoy',
    age: 58,
    job: 'Emekli öğretmen',
    description:
        'Dördüncü katta yaşayan, apartmanın en eski sakinlerinden. Selin '
        'ile fincan telvesi bakıp sohbet edecek kadar yakındı. Elişi ve '
        'örgü yapar.',
    relationToVictim: 'Komşu ve kahve arkadaşı.',
    statedAlibi:
        'Olay gecesi evinde bir dizi izleyip erken yattığını, o gün '
        'Selin\'in kapısını çalmadığını söylüyor.',
    personality:
        'Meraklı, konuşkan, korktuğunda ayrıntıyı kısa keser; polisten çekinir',
    speakingStyle:
        'Samimi ve dolambaçlı konuşur, "kızım" der, konuyu hemen '
        'komşuluk hikâyelerine kaydırır. Korktuğunda sesi kısılır.',
    secret:
        'O akşam 20.30 ile 21.15 arasında Selin\'de kahve içti, fal '
        'baktı. Selin\'den 25.000 TL borç almıştı ve geri ödemedi. '
        'Ruj izli fincan onun. Polisle karşılaşırsa borcu ortaya çıkar '
        'diye endişeli.',
    truth:
        'Cinayetle ilgisi yok. 21.15\'te kendi evine çıktı. 22.20 civarında '
        'Selin\'in dairesinden yükselen iki kadın sesini duydu; biri sakin '
        've kısıktı. Korkusundan kimseye söylemedi.',
    lies: [
      'O gün Selin\'in kapısını hiç çalmadığını söylüyor.',
      'Selin\'e hiçbir borcu olmadığını iddia ediyor.',
    ],
    knows: [
      '20.30\'da Selin ile kahve içtiğini.',
      'Selin\'in son günlerde ofis işleri yüzünden huzursuz olduğunu.',
      '22.20 civarı Selin\'in dairesinden iki kadın sesi geldiğini, birinin '
          'sakin ve kısık olduğunu.',
      'Ela\'yı apartmanda daha önce gördüğünü.',
    ],
    doesNotKnow: [
      'Şirket hesabındaki ödemeleri.',
      'Selin\'in gönderilmemiş mesaj taslağını.',
      'Kamera kaydının neden olmadığını.',
      'Cinayetin nasıl işlendiğini.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_005',
    name: 'Barış Öztürk',
    age: 44,
    job: 'Dış mali müşavir',
    description:
        'Selin ile Ela\'nın tasarım ofisinin yıllık beyannamelerini '
        'hazırlayan mali müşavir. Ofise ayda bir kez, gündüz uğrar.',
    relationToVictim: 'Ofisin dış mali müşaviri.',
    statedAlibi:
        'Olay gecesi Ankara\'da bir vergi dairesi randevusu için '
        'olduğunu, otelde kaldığını söylüyor.',
    personality:
        'Titiz, çekingen, ihmalini itiraf etmekten hoşlanmayan, savunmada '
        'ağır ağır konuşan',
    speakingStyle:
        'Resmi ve ölçülü konuşur, mali terimler kullanır. Sıkışınca '
        '"bunu muhasebe kayıtlarından teyit edin" der.',
    secret:
        'Ofisin bir vergi beyannamesini iki ay geç vermişti ve bunu '
        'Selin\'den saklıyordu. Selin o akşam 20.10\'da onu arayıp '
        'ödemeleri sordu; Barış Anka Ambalaj\'ı hiç duymadığını ve '
        'Ela\'ya sorması gerektiğini söyledi.',
    truth:
        'Cinayetle ilgisi yok. Ankara\'daydı, otel kaydı ve kamera bunu '
        'gösteriyor. Sadece geç beyanname ihmalini ve Selin ile o '
        'telefon görüşmesini saklıyor.',
    lies: [
      'Selin ile o gün hiç konuşmadığını söylüyor.',
      'Ofis hesaplarında hiçbir şüpheli hareket görmediğini iddia ediyor.',
    ],
    knows: [
      'Selin\'in 20.10\'da kendisini aradığını.',
      'Anka Ambalaj adlı bir firmayı hiç duymadığını.',
      'Ödemelerin Ela\'nın sorumluluğunda olduğunu.',
      'Ofisin iç sistemine ofis ağı dışından erişilemediğini.',
    ],
    doesNotKnow: [
      'Selin\'in nasıl öldürüldüğünü.',
      'Kamera kaydındaki boşluğu.',
      'Ela\'nın akıllı saatinin bağlantı kaydını.',
    ],
    isKiller: false,
  ),
];

/// DAVA 002 — Üniversite Kütüphanesinde Son Gece supheliler (ZOR).
const List<Suspect> dava002Supheliler = [
  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d002_001',
    name: 'Prof. Dr. Aylin Sezer',
    age: 52,
    job: 'Öğretim üyesi, Kerem\'in tez danışmanı',
    description:
        'Bölümün en kıdemli öğretim üyelerinden biri. Kerem\'in doktora '
        'tez danışmanlığını üç yıldır yürütüyor.',
    relationToVictim: 'Tez danışmanı.',
    statedAlibi:
        'O akşam kütüphaneye hiç gitmediğini, evde makale düzelttiğini '
        'söylüyor. Kartlı geçiş kayıtlarında adının olmadığını hatırlatıyor.',
    personality:
        'Soğukkanlı, otoriter, itibarına çok düşkün; sıkıştığında '
        'akademik jargonun arkasına saklanır',
    speakingStyle:
        'Ölçülü ve resmi konuşur, cümlelerini dikkatlice seçer. '
        'Rahatsız olunca konuşma hızını değil, kelime seçimini '
        'sertleştirir.',
    secret:
        'Kerem\'in kendisini intihalle suçlayan bir şikayet hazırladığını '
        'öğrenmişti. Bodrum arşiv kapısının anahtarını Melis Karaca\'ya '
        'aldırıp gece kartsız girmeyi planladı.',
    truth:
        'KATİL. 22.58 civarı bodrum arşiv kapısından girip iç merdivenle '
        'galeri kata çıktı. Kerem ile şikayet konusunu tartıştılar. Tartışma '
        'büyüdü, 23.15 civarında boğuşma sırasında Kerem korkuluktan düştü. '
        'Ceketinden bir düğme koptu. Panikleyip 23.20\'de yangın '
        'merdiveninden kaçtı. Anahtarı ertesi sabah güvenlik masasına bıraktı.',
    lies: [
      'O gece kütüphaneye hiç gitmediğini söylüyor.',
      'Kerem ile aralarında hiçbir sorun olmadığını iddia ediyor.',
      'Kerem\'in kendisi hakkında bir şikayet hazırladığından haberi '
          'olmadığını söylüyor.',
      'Arşiv anahtarından haberi olmadığını söylüyor.',
    ],
    knows: [
      'Kerem\'in kendisini etik kurula şikayet etmeyi planladığını.',
      'O gece galeri katta Kerem ile tartıştıklarını.',
      'Yangın merdiveninden çıktığını.',
      'Ceketindeki bir düğmenin merdivende koptuğunu.',
    ],
    doesNotKnow: [
      'Melis\'in sessiz çalışma odasında kaldığını.',
      'Volkan Çelik\'in de o gece binada olduğunu.',
      'Emre\'nin telefonundaki gönderilmemiş mesajı.',
      'Otomat ödeme kaydının varlığını.',
    ],
    isKiller: true,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d002_002',
    name: 'Emre Bulut',
    age: 29,
    job: 'Araştırma görevlisi',
    description:
        'Kerem ile aynı bölümde çalışan, aynı kıdem pozisyonu için '
        'rekabet eden başka bir araştırma görevlisi.',
    relationToVictim: 'İş arkadaşı, aynı zamanda rakip.',
    statedAlibi:
        'Kapanış saatinde, 23.00 civarında kütüphaneden çıkıp eve '
        'gittiğini söylüyor.',
    personality:
        'Rekabetçi ama dürüst, gerginlik altında savunmaya değil '
        'açıklamaya yönelir',
    speakingStyle:
        'Hızlı ve biraz telaşlı konuşur, sık sık kendini haklı çıkarmaya '
        'çalışan ayrıntılar ekler.',
    secret:
        'Kerem ile son haftalarda bir makalenin yazar sırası yüzünden '
        'soğuktular; 22.50 civarı merdivende kısaca karşılaştılar ve '
        'tartıştılar. Bunu saklıyor çünkü kötü görünmekten korkuyor.',
    truth:
        'Cinayeti işlemedi. Gerçekten 23.05\'te ana kapıdan çıktı, kamera '
        'bunu doğruluyor. 22.50 civarı merdivende Kerem\'i canlı gördü, '
        'aynı anda ceketli uzun boylu bir adamın yan kapıya doğru '
        'ayrıldığını fark etti ama yüzünü görmedi.',
    lies: [
      'O gece Kerem ile hiç karşılaşmadığını iddia ediyor.',
      'Makale konusunda Kerem ile hiçbir sorunu olmadığını söylüyor.',
    ],
    knows: [
      'Kerem ile yazar sırası konusunda anlaşmazlıkları olduğunu.',
      'Aylin Hoca ile Kerem arasında son zamanlarda gerginlik olduğunu '
          '(bölümdeki dedikodulardan).',
      '22.50 civarı merdivende Kerem\'le kısaca karşılaştığını.',
      'O sırada ceketli uzun boylu bir adamın yan kapıya yöneldiğini.',
    ],
    doesNotKnow: [
      'Aylin\'in etik şikayetinden.',
      'Galeri katta o gece ne olduğunu.',
      'Yangın merdiveni alarmının çaldığını.',
      'Melis Karaca\'nın gece binada kaldığını.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d002_003',
    name: 'Gökhan Aydemir',
    age: 45,
    job: 'Gece güvenlik görevlisi',
    description:
        'Sekiz yıldır üniversitede güvenlik görevlisi olarak çalışıyor. '
        'Kapanıştan sonra binayı devriye gezmekle sorumlu.',
    relationToVictim: 'Kurbanı sadece binada görürdü, yakın tanışıklık yok.',
    statedAlibi:
        'Kapanıştan sonra rutin turunu attığını, her şeyin normal '
        'göründüğünü söylüyor.',
    personality:
        'Yorgun, işini kaybetmekten korkan, ihmalini itiraf etmekten '
        'çekinen biri',
    speakingStyle:
        'Kısa ve kaçamak cevaplar verir, konuyu değiştirmeye çalışır, '
        'göz teması kurmaktan kaçınır.',
    secret:
        '23.12 ile 23.28 arası güvenlik odasında uyuyakalmıştı. Yangın '
        'merdiveni alarmı çalınca panelden alarmı susturup tekrar '
        'uyudu; kontrol etmeye gitmedi. Bu ihmalinin ortaya çıkmasından '
        'korkuyor.',
    truth:
        'Cinayetle hiçbir ilgisi yok. Sadece görevini ihmal etti ve bunu '
        'saklıyor.',
    lies: [
      'Yangın merdiveni alarmını hiç duymadığını söylüyor.',
      'Gece boyunca devriyeyi düzenli attığını söylüyor.',
    ],
    knows: [
      'Alarmın 23.20 civarı çaldığını (susturdu ama gitmedi).',
      'Galeri katında kamera olmadığını.',
      'O gece binada kimlerin kalma izni aldığını (defterden).',
    ],
    doesNotKnow: [
      'Aylin ile Kerem arasındaki tartışmanın içeriğini.',
      'Cinayetin nasıl işlendiğini.',
      'Bodrum arşiv anahtarının kimde olduğunu.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d002_004',
    name: 'Doç. Dr. Volkan Çelik',
    age: 49,
    job: 'Doçent, Kerem\'in çalıştığı projenin yürütücüsü',
    description:
        'Aylin Sezer ile bölümde yıllardır rekabet eden, projeleriyle '
        'tanınan bir doçent. Kerem\'in çalıştığı fonlu projenin lideri.',
    relationToVictim: 'Proje yürütücüsü.',
    statedAlibi:
        'O gece kütüphaneye hiç gitmediğini, evde olduğunu söylüyor.',
    personality:
        'Karizmatik, ikna edici, savunmada nazik ama iğneleyici; '
        'sıkıştığında ağırbaşlı görünmeye çalışır',
    speakingStyle:
        'Rahat ve samimi başlar, sonra "genç arkadaşım" gibi ifadelerle '
        'karşısındakini küçümsemeye kayar.',
    secret:
        'Projedeki ölçüm verilerinde oynama yaptı; Kerem bunu fark etti. '
        '22.35\'te kütüphaneye gidip Kerem\'i ikna etmeye çalıştı, ona '
        'proje sonrası kadro vaat etti. Kerem net cevap vermedi.',
    truth:
        'Cinayeti işlemedi. 22.41\'de iki kahve alıp Kerem ile konuştu, '
        '22.53\'te yan kapıdan çıktı. Çıkarken Kerem canlıydı. Kütüphanede '
        'olduğunu, veri meselesi ortaya çıkar korkusuyla saklıyor.',
    lies: [
      'O gece kütüphaneye hiç gitmediğini söylüyor.',
      'Kerem ile projede hiçbir sorun olmadığını iddia ediyor.',
      'Veri tutarsızlığından haberi olmadığını söylüyor.',
    ],
    knows: [
      'Kerem\'in veri tutarsızlığını bulduğunu.',
      '22.41\'de Kerem ile kahve içtiğini.',
      '22.53\'te yan kapıdan çıktığını.',
      'Çıktığında Kerem\'in canlı ve tek başına olduğunu.',
    ],
    doesNotKnow: [
      'Aylin Sezer\'in etik şikayet konusunu.',
      'Kerem\'in galeri katta sonradan ne yaşadığını.',
      'Yangın merdiveni alarmını.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d002_005',
    name: 'Melis Karaca',
    age: 27,
    job: 'Doktora öğrencisi',
    description:
        'Kerem ile aynı laboratuvarda çalışan yakın arkadaşı, bir dönem '
        'sevgili de olmuşlar. Aylin Sezer\'in asistanlığını da yapıyor.',
    relationToVictim: 'Arkadaş ve eski sevgili.',
    statedAlibi:
        'Akşam 21.00\'de kütüphaneden çıkıp eve gittiğini söylüyor.',
    personality:
        'Çekingen, çok düşünen, korktuğunda suskunlaşan; hocasından çekinir',
    speakingStyle:
        'Alçak sesle ve duraksayarak konuşur, cümlelerini yarıda bırakır, '
        'suçluluk duyduğunda göz yaşlarını tutmaya çalışır.',
    secret:
        'Kütüphanede izinsiz gece kaldı. Öğleden sonra Aylin Hoca\'nın '
        'isteğiyle "Prof. Sezer adına" bodrum arşiv anahtarını aldı. Gece '
        '23.05 - 23.15 arası galeri kattan yükselen sesleri duydu; birinin '
        'Aylin Hoca olduğunu tanıdı ("Bunu göndermeyeceksin"). Korkudan '
        'kimseye söylemedi.',
    truth:
        'Cinayeti işlemedi. Kerem ile arası düzelmişti. Ama izinsiz kalması, '
        'anahtarı alması ve hocasına karşı ifade vermekten korkması yüzünden '
        'susuyor.',
    lies: [
      '21.00\'de kütüphaneden ayrıldığını söylüyor.',
      'Arşiv anahtarını hiç almadığını iddia ediyor.',
      'O gece hiçbir ses duymadığını söylüyor.',
    ],
    knows: [
      'Aylin Hoca\'ya anahtarı aldırdığını.',
      '23.05 - 23.15 arası galeri kattan tartışma sesleri geldiğini.',
      'Seslerden birinin Aylin Hoca olduğunu.',
      'Kerem\'in etik şikayet hazırladığını.',
    ],
    doesNotKnow: [
      'Volkan Çelik\'in veri meselesini.',
      'Kerem\'in düşüşünü kimin tetiklediğini net olarak.',
      'Gökhan\'ın alarmı susturduğunu.',
    ],
    isKiller: false,
  ),
];

/// DAVA 003 — Eski Aile Evinde Miras supheliler (ZOR).
const List<Suspect> dava003Supheliler = [
  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d003_001',
    name: 'Kaan Erdem',
    age: 45,
    job: 'Restoran işletmecisi',
    description:
        'Nazmiye\'nin oğlu. İşlettiği restoran son iki yıldır zarar '
        'ediyor, ciddi kumar borcu olduğu söyleniyor.',
    relationToVictim: 'Oğlu.',
    statedAlibi:
        'O akşam boyunca bahçede, havai fişekleri izlerken kalabalığın '
        'içinde olduğunu söylüyor.',
    personality:
        'Neşeli görünmeye çalışan ama içten içe gergin, para konusunda '
        'savunmaya geçen biri',
    speakingStyle:
        'Şakacı bir tonla başlar, sıkıştırılınca aniden ciddileşip '
        'konuyu değiştirmeye çalışır.',
    secret:
        'Birkaç hafta önce annesinden kumar borcunu kapatmak için para '
        'istemiş, reddedilmişti. Bunu saklıyor çünkü kötü bir sebep '
        'gibi görünüyor.',
    truth:
        'Cinayetle ilgisi yok. 20.30\'da buz almak için mutfağa girdi, '
        '20.50\'den itibaren bahçedeydi. Sadece parasal sıkıntısını ve '
        'annesiyle yaşadığı para tartışmasını saklıyor.',
    lies: [
      'Annesinden para istediğini inkâr ediyor.',
      'Mutfağa hiç girmediğini söylüyor.',
    ],
    knows: [
      'Sibel\'in yalıyı satmak istediğini.',
      'Annesinin vasiyetini değiştirmeyi düşündüğünü (genel olarak, '
          'ayrıntısını bilmiyor).',
      '20.50\'de havai fişeklerin başladığını ve o saatte bahçede olduğunu.',
    ],
    doesNotKnow: [
      'Vasiyetin tam olarak nasıl değiştirileceğini.',
      'Çaya kimin, ne zaman bir şey kattığını.',
      'Tarık\'ın telefon görüşmesinin içeriğini.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d003_002',
    name: 'Sibel Erdem-Kaya',
    age: 50,
    job: 'Emlakçı',
    description:
        'Nazmiye\'nin kızı. Yıllardır yalının satılıp mirasın paylaşılması '
        'gerektiğini savunuyor, annesiyle bu yüzden sık tartışıyorlardı.',
    relationToVictim: 'Kızı.',
    statedAlibi:
        'Mutfakta kısa bir süre yalnız kaldığını ama sadece kendisine '
        'su doldurduğunu söylüyor.',
    personality:
        'Kontrollü, pratik, duygularını göstermemeye çalışan; '
        'sıkıştığında sakinliğini abartılı şekilde korur',
    speakingStyle:
        'Düzgün ve iş insanı gibi konuşur, duraksamadan cevap vermeye '
        'çalışır. Gerçekten şaşırdığında bile tonu değişmez, bu da '
        'bazen doğal durmaz.',
    secret:
        'O sabah 11.24\'te ahizeden annesinin avukatla telefon görüşmesine '
        'kulak misafiri oldu ve mirastan çıkarılacağını öğrendi.',
    truth:
        'KATİL. Mirastan çıkarılacağını öğrenince paniklemiş, kendi '
        'digoksin ilacından dört tableti ezip 20.52 - 20.56 arasında, '
        'Zehra üst kata çıkmışken, annesinin özel fincanındaki çaya kattı. '
        'Bahçedeki video kadrajından bu yüzden birkaç dakika çıktı.',
    lies: [
      'Avukatla yapılan telefon görüşmesini duymadığını iddia ediyor.',
      'Yalıyı satmak istemediğini, bunun eski bir mesele olduğunu '
          'söylüyor.',
      'Mutfağa sadece su almak için girdiğini söylüyor.',
      'İlaç kutusundaki eksik tabletlerden haberi olmadığını söylüyor.',
    ],
    knows: [
      'Annesinin vasiyeti değiştirmek istediğini.',
      'Kendisinin mirastan çıkarılacağını.',
      'Kendi digoksin ilacını kullandığını.',
      'Annesinin özel fincanının hangisi olduğunu.',
    ],
    doesNotKnow: [
      'Deniz\'in gizli nişan haberini.',
      'Kaan\'ın kumar borcunu.',
      'Yalı hareket sensörünün kaydını.',
    ],
    isKiller: true,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d003_003',
    name: 'Deniz Erdem',
    age: 24,
    job: 'Yeni mezun',
    description:
        'Nazmiye\'nin torunu. Büyükannesiyle yakın bir ilişkisi vardı, '
        'ailenin en sevilen üyelerinden biri olarak biliniyor.',
    relationToVictim: 'Torunu.',
    statedAlibi:
        'O gece boyunca bahçede kuzenleriyle birlikte olduğunu '
        'söylüyor.',
    personality:
        'Sıcakkanlı, biraz çekingen; kişisel bir şey sorulduğunda '
        'gerginleşip konuyu kısa kesmeye çalışır',
    speakingStyle:
        'Genelde rahat ve sıcak konuşur, ama kişisel sorularda '
        'cümleleri kısalır ve tereddüt eder.',
    secret:
        'Aileden habersiz nişanlandı; büyükannesinin bu ilişkiyi '
        'onaylamayacağından korktuğu için sakladı. 20.53 - 20.55 arası '
        'sandal evine gidip nişanlısına mesaj attı.',
    truth:
        'Cinayetle hiçbir ilgisi yok. Sadece kişisel bir sırrı var ve '
        'kadrajdan çıktığı iki dakikayı açıklamaktan çekiniyor.',
    lies: [
      'Bir şey saklamadığını iddia ediyor.',
      'Gece boyunca bahçeden hiç ayrılmadığını söylüyor.',
    ],
    knows: [
      'Büyükannesinin yalıyı kendisine bırakmayı düşündüğünü (üstü '
          'kapalı bir şekilde duymuştu).',
      '20.35\'te mutfağa su almaya girdiğini.',
      'Sandal evine gittiğini.',
    ],
    doesNotKnow: [
      'Sibel\'in mutfakta ne yaptığını.',
      'Çayla ilgili ayrıntıları.',
      'Avukatla yapılan görüşmenin ayrıntılarını.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d003_004',
    name: 'Dr. Tarık Kaya',
    age: 52,
    job: 'Kardiyoloji uzmanı, özel klinik sahibi',
    description:
        'Sibel\'in eşi. Nazmiye\'nin kalp ilaçlarını bilen tek doktor. '
        'Kliniği yeni bir yatırım yüzünden borçlu.',
    relationToVictim: 'Damadı.',
    statedAlibi:
        'Akşam yemeğinden sonra üst kat balkonda bir meslektaşıyla telefonda '
        'konuştuğunu, mutfağa hiç girmediğini söylüyor.',
    personality:
        'Ağırbaşlı, kibirli, doktor otoritesiyle konuşan; eleştirilince '
        'soğuk ve hafif alaycı',
    speakingStyle:
        'Tıbbi terimler kullanır, karşısındakini bilgisizmiş gibi '
        'yönlendirir. Sıkıştığında "meslek etiği" diyerek konuyu kapatır.',
    secret:
        'Kliniği için aldığı 1,2 milyon TL\'lik borcun ödemesi yaklaşıyor '
        've Sibel\'in mirastan pay almasına güveniyordu. Yalının satılmasını '
        'Sibel\'e o telkin etmişti.',
    truth:
        'Cinayetle ilgisi yok. 20.44 - 21.12 arasında gerçekten balkonda '
        'telefondaydı. Nazmiye\'nin nabzını 19.30\'da kontrol etti, ilaç '
        'dozuna dokunmadı. Borcunu saklıyor.',
    lies: [
      'Yalının satılması fikrinden haberi olmadığını söylüyor.',
      'Kliniğinin mali durumunun iyi olduğunu iddia ediyor.',
    ],
    knows: [
      'Digoksinin etkilerini ve toksik dozunu.',
      'Sibel\'in vasiyetten çıkarılacağını dolaylı olarak tahmin ettiğini.',
      'Balkondan bahçeyi izlerken Sibel\'i bir süre göremediğini.',
    ],
    doesNotKnow: [
      'Avukatla yapılan telefon görüşmesinin içeriğini.',
      'Çayı kimin hazırladığını.',
      'Deniz\'in sandal evine gittiğini.',
    ],
    isKiller: false,
  ),

  // ---------------------------------------------------------------
  Suspect(
    id: 'supheli_d003_005',
    name: 'Zehra Yıldız',
    age: 58,
    job: 'Yalıda yirmi yıldır çalışan yardımcı',
    description:
        'Nazmiye\'nin yirmi yıldır yanında çalışan, ilaçlarını haftalık '
        'kutuya düzenleyen kişi. Ailenin sırlarını en iyi bilenlerden.',
    relationToVictim: 'Bakıcı ve yardımcı.',
    statedAlibi:
        'Çay tepsisini hazırlayıp kimseye bırakmadan doğrudan Nazmiye\'ye '
        'götürdüğünü, tepsiyi hiç yalnız bırakmadığını söylüyor.',
    personality:
        'Sadık, çekingen, suçlanmaktan korkan; yalan söylemeyi beceremez '
        'ama susmayı bilir',
    speakingStyle:
        'Saygılı ve ağır konuşur, "efendim" der. Sıkıştığında kelimeleri '
        'yutar, gözlerini kaçırır.',
    secret:
        'Tepsiyi 20.50\'de hazırlayıp Nazmiye\'nin şalını getirmek için '
        'üst kata çıktı ve tepsiyi mutfakta bıraktı; bunu saklıyor. Ayrıca '
        'ilaç kutusunun kilidini gün içinde açık unutmuştu.',
    truth:
        'Cinayetle ilgisi yok. 20.51 - 20.57 arası üst kattaydı. Dönerken '
        'Sibel\'in mutfaktan çıktığını gördü ve elleri titriyordu; bir şey '
        'söylemeye cesaret edemedi.',
    lies: [
      'Tepsiyi hiç yalnız bırakmadığını söylüyor.',
      'İlaç kutusunun kilidinin her zaman kapalı olduğunu iddia ediyor.',
    ],
    knows: [
      'Nazmiye\'nin özel fincanının hangisi olduğunu.',
      'Nazmiye\'nin ilaçlarının 0,125 mg tabletler olduğunu.',
      '20.56 civarı Sibel\'in mutfaktan çıktığını.',
      'Nazmiye\'nin son günlerde Sibel ile gergin olduğunu.',
    ],
    doesNotKnow: [
      'Avukatla yapılan görüşmenin içeriğini.',
      'Kaan\'ın borcunu.',
      'Deniz\'in nişan sırrını.',
    ],
    isKiller: false,
  ),
];
