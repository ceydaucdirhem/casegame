import '../models/evidence.dart';

/// DAVA 001 — Kadikoy Apartman Cinayeti delilleri (ZOR).
///
/// Fonksiyon kullaniyoruz cunku Evidence icindeki isInspected alani
/// oyun sirasinda degisiyor. Her cagrildiginda temiz bir liste uretir.
List<Evidence> dava001Delilleri() {
  return [
    Evidence(
      id: 'delil_001',
      title: 'Durmuş duvar saati',
      description:
          'Salondaki pilli duvar saati yere düşmüş, camı çatlamış ve 22.47\'de '
          'durmuş. Düşerken pil yuvasının kapağı açılmış. Saat boğuşmanın bir '
          'anını gösteriyor olabilir ama ölüm anını gösterdiği söylenemez.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Salon, koltuğun yanı',
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_002',
      title: 'Mutfaktaki fincanlar',
      description:
          'Tezgâhta iki Türk kahvesi fincanı var. Birinin kenarında koyu ruj '
          'izi var ve telvesi tamamen kurumuş. Diğerinde ruj yok, telvesi '
          'hâlâ nemli. Kurutma rafında ise yıkanmış, hâlâ ıslak üçüncü bir '
          'fincan duruyor. Selin ruj kullanmıyordu.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Mutfak tezgâhı ve kurutma rafı',
      relatedSuspectIds: ['supheli_003', 'supheli_004'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_003',
      title: 'Kamera kaydındaki boşluk',
      description:
          'Apartman giriş kamerası 22.00 ile 23.15 arasında kayıt yapmamış. '
          'Kayıt cihazının kablosu elle çıkarılıp tekrar takılmış. Cihaz '
          'yöneticinin odasında, kilitli dolapta duruyor.',
      type: 'Görüntü Kaydı',
      discoveredAt: 'Yönetici odası',
      relatedSuspectIds: ['supheli_001'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_004',
      title: 'Gönderilmemiş mesaj taslağı',
      description:
          'Selin\'in telefonunda gönderilmemiş bir taslak bulundu: '
          '"Yarın muhasebeye gidiyorum. Bunu kendi ağzından duymak istiyorum." '
          'Taslak 13 Mart akşamı yazılmış, alıcı kutusu boş bırakılmış. '
          '"Muhasebe" kelimesi hem ofisin iç muhasebesini hem dış mali '
          'müşaviri işaret edebilir.',
      type: 'Dijital Delil',
      discoveredAt: 'Kurbanın telefonu',
      relatedSuspectIds: ['supheli_003', 'supheli_005'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_005',
      title: 'Adli tıp ön raporu',
      description:
          'Ölüm saati 22.30 ile 23.30 arasında. Ölüm nedeni boyundan baskı '
          'uygulanması. Tırnakların altında koyu bordo, ince yün-mohair '
          'karışımı lifler bulundu. Boyundaki baskı izleri küçük ya da orta '
          'boy bir elle uyumlu; cinsiyet konusunda kesin bir sonuç '
          'çıkarılamıyor. Vücutta savunma yaraları var.',
      type: 'Adli Tıp',
      discoveredAt: 'Adli Tıp Kurumu',
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_006',
      title: 'Şirket hesap ekstresi',
      description:
          'Selin\'in ortağı olduğu tasarım ofisinin hesabından son altı ayda '
          'altı ayrı ödeme, kayıtlarda görünmeyen "Anka Ambalaj Ltd." adlı '
          'bir tedarikçiye yapılmış. Toplam tutar 412.000 TL. Ödemeleri '
          'onaylayan kullanıcı adı "muhasebe_2"; Selin\'in hesabı değil.',
      type: 'Belge',
      discoveredAt: 'Ofis arşivi',
      relatedSuspectIds: ['supheli_003', 'supheli_005'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_007',
      title: 'Merdiven boşluğundaki izmarit',
      description:
          'Üçüncü ve dördüncü kat arasındaki sahanlıkta bir izmarit bulundu. '
          'Apartmanda sigara içen tek kişi yönetici Murat Kaya. İzmaritin '
          'yanındaki külün soğuma durumu, sigaranın gece 22.00 - 22.10 '
          'arasında içildiğini gösteriyor.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Merdiven sahanlığı',
      relatedSuspectIds: ['supheli_001'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_008',
      title: 'Zilin kayıtlı görüntüsü',
      description:
          'Selin\'in akıllı kapı zili 21.52\'de bir hareket kaydetmiş. '
          'Zilin saati doğru ayarlı. Görüntüde uzun boylu bir erkek kapıya '
          'geliyor, zile basmadan birkaç saniye bekleyip geri dönüyor. '
          'Yüzü net değil.',
      type: 'Dijital Delil',
      discoveredAt: 'Kapı zili uygulaması',
      relatedSuspectIds: ['supheli_002'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_009',
      title: 'Arama kaydı ve Ankara otel belgesi',
      description:
          'Selin\'in telefonu 13 Mart günü saat 20.10\'da Barış Öztürk\'ü '
          '4 dakika aramış. Barış Öztürk o gün Ankara\'da vergi dairesi '
          'randevusundaydı; otel giriş kaydı 21.40, ertesi sabah 08.00\'de '
          'randevusu var. Otel kapısındaki kamera geceyi otelde geçirdiğini '
          'doğruluyor.',
      type: 'Belge',
      discoveredAt: 'Telefon dökümü ve otel kaydı',
      relatedSuspectIds: ['supheli_005'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_010',
      title: 'Muhasebe programı giriş kayıtları',
      description:
          '"muhasebe_2" kullanıcısı yedi ay önce ofisin yönetici hesabından '
          'açılmış. Altı onayın altısı da ofisin iç ağından, hafta içi 19.00 '
          'sonrasında yapılmış; dışarıdan bağlantı mümkün değil. İki onay, '
          'Selin\'in İzmir\'deki fuarda olduğu günlere denk geliyor. Dış '
          'mali müşavir Barış Öztürk ofise ayda bir kez, sadece gündüz '
          'uğruyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Ofis sunucusu',
      relatedSuspectIds: ['supheli_003', 'supheli_005'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_011',
      title: 'Ela\'nın telefon konumu ve televizyon kaydı',
      description:
          'Ela Yılmaz\'ın telefonu 22.00 - 23.40 arasında evindeki Wi-Fi\'a '
          'bağlı ve sabit görünüyor. Aynı saatlerde evindeki akıllı '
          'televizyonda bir dizi kesintisiz oynamış; 23.02\'de gelen '
          '"Hâlâ izliyor musun?" uyarısı yanıtsız kalmış. İlk bakışta güçlü '
          'bir alibi gibi duruyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Ela\'nın izin verdiği telefon ve TV dökümü',
      relatedSuspectIds: ['supheli_003'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_012',
      title: 'Ela\'nın akıllı saat bağlantı kaydı',
      description:
          'Ela\'nın kolundaki akıllı saatin sağlık uygulaması dökümüne '
          'göre saat, 22.09\'da telefondan bağlantısını kaybetmiş ve '
          '23.21\'de yeniden bağlanmış. Bu aralıkta saat 2.900 adım ve '
          '22.47 civarında ani bir nabız yükselmesi kaydetmiş. Telefon '
          'ise aynı saatlerde evde sabit duruyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Ela\'nın sağlık uygulaması dökümü',
      relatedSuspectIds: ['supheli_003'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_013',
      title: 'Elyaf karşılaştırma raporu',
      description:
          'Tırnaktaki bordo lifler, komşu Nermin Aksoy\'un el örgüsü '
          'yeleğiyle renk açısından uyuşuyor ama iplik kalınlığı '
          'uyuşmuyor: yelek kalın el ipliği, lifler ince makine örgüsü '
          'mohair. Ela Yılmaz\'ın 10 Mart tarihli bir sosyal medya '
          'paylaşımında ince örgülü bordo bir mohair hırka giydiği '
          'görülüyor; bu hırka evinde bulunamadı.',
      type: 'Adli Tıp',
      discoveredAt: 'Adli Tıp Kurumu ve sosyal medya',
      relatedSuspectIds: ['supheli_003', 'supheli_004'],
      importance: 'Yüksek',
    ),
  ];
}

/// DAVA 002 — Üniversite Kütüphanesinde Son Gece delilleri (ZOR).
List<Evidence> dava002Delilleri() {
  return [
    Evidence(
      id: 'delil_d002_001',
      title: 'Güvenlik giriş-çıkış defteri',
      description:
          'Kapanıştan sonra binada kalma izni alanlar: Kerem Doğan, '
          'araştırma görevlisi Emre Bulut ve Doç. Dr. Volkan Çelik. Çıkış '
          'sütununda sadece Emre Bulut (23.05) ve güvenlik görevlisi Gökhan '
          'Aydemir\'in (23.30, devriye sonrası) imzası var. Volkan Çelik\'in '
          'çıkış imzası yok. Defterde başka kimsenin adı geçmiyor.',
      type: 'Belge',
      discoveredAt: 'Güvenlik masası',
      relatedSuspectIds: ['supheli_d002_004', 'supheli_d002_002'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_002',
      title: 'Adli tıp ön raporu',
      description:
          'Ölüm saati 23.15 ile 23.45 arası. Ölüm nedeni, galeri kat '
          'korkuluğundan düşme sonucu kafa travması. Boyunda ve ön kollarda '
          'düşmeyle açıklanamayan taze morluklar var; sağ ön koldaki morluk '
          'savunma hareketi gibi. Kerem ölümünden yaklaşık bir saat önce '
          'otomat kahvesi içmiş.',
      type: 'Adli Tıp',
      discoveredAt: 'Adli Tıp Kurumu',
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_003',
      title: 'Gönderilmemiş etik kurul şikayeti',
      description:
          'Kerem\'in dizüstü bilgisayarında etik kurula hitaben yazılmış '
          'ama gönderilmemiş bir taslak var. Tez danışmanı Prof. Dr. Aylin '
          'Sezer\'i, ortak bir makalede kendisini birinci yazar yapmaya '
          'çalışmakla suçluyor. Dosya 22.12\'de son kez kaydedilmiş. '
          'Makalenin diğer yazarı Emre Bulut.',
      type: 'Dijital Delil',
      discoveredAt: 'Kurbanın dizüstü bilgisayarı',
      relatedSuspectIds: ['supheli_d002_001', 'supheli_d002_002'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_004',
      title: 'Veri tutarsızlığı notları',
      description:
          'Kerem\'in bilgisayarında "Çelik_proje_notlar" adlı bir tablo '
          'var. Doç. Dr. Volkan Çelik\'in yürüttüğü projede 14 ölçüm '
          'satırının kopyalanıp değiştirildiği not edilmiş. Son satır: '
          '"Cuma günü göndermeden önce Volkan Hoca\'ya bir şans vereceğim."',
      type: 'Dijital Delil',
      discoveredAt: 'Kurbanın dizüstü bilgisayarı',
      relatedSuspectIds: ['supheli_d002_004'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_005',
      title: 'Merdiven korkuluğunda kopan düğme',
      description:
          'Galeri merdiveninin korkuluğuna takılı, koyu lacivert yünlü '
          'kumaştan kopmuş dört delikli bir düğme bulundu. Düğme ithal '
          'blazer ceket modeline ait; bölümde en az üç öğretim üyesinin '
          'ceketinde aynı model kullanılıyor.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Merdiven korkuluğu',
      relatedSuspectIds: ['supheli_d002_001', 'supheli_d002_004'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d002_006',
      title: 'Yangın merdiveni alarm kaydı',
      description:
          'Binanın arka cephesindeki yangın merdiveni kapısı 23.20\'de '
          'içeriden dışarıya doğru açılmış ve alarm çalmış. Alarm, '
          'güvenlik odasındaki panelden 23.21\'de susturulmuş. Bu saatte '
          'defterde planlı bir çıkış yok.',
      type: 'Dijital Delil',
      discoveredAt: 'Bina güvenlik sistemi',
      relatedSuspectIds: ['supheli_d002_003'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_007',
      title: 'Otomat ödeme kaydı',
      description:
          'Galeri kattaki kahve otomatından 22.41\'de Kerem\'in kütüphane '
          'kartıyla iki kahve alınmış. Galeri kat çalışma masasında iki '
          'yarım bardak bulundu. Kerem o saatte birine ikram etmiş.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Galeri kat otomatı ve çalışma masası',
      relatedSuspectIds: [
        'supheli_d002_002',
        'supheli_d002_004',
        'supheli_d002_005',
      ],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d002_008',
      title: 'Kartlı geçiş sistemi kaydı',
      description:
          'Yan girişte 21.02\'de Emre Bulut, 22.35\'te Volkan Çelik kart '
          'okutarak girmiş. Yan kapının çıkış sayacı 22.53\'te bir çıkış '
          'kaydetmiş; çıkanın kim olduğu kaydedilmiyor. Kartlı geçiş '
          'listesinde Aylin Sezer\'e ait hiçbir kayıt yok.',
      type: 'Dijital Delil',
      discoveredAt: 'Kartlı geçiş sistemi',
      relatedSuspectIds: ['supheli_d002_004', 'supheli_d002_001'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_009',
      title: 'Ana giriş kamera kaydı',
      description:
          'Kütüphanenin sadece ana girişinde kamera var. Kayıt, Emre '
          'Bulut\'un 23.05\'te ana kapıdan çıktığını net gösteriyor. '
          '22.30 - 23.05 arasında ana kapıdan başka giriş ya da çıkış yok. '
          'Yan giriş, yangın merdiveni ve bodrum arşiv kapısı kamera dışında.',
      type: 'Görüntü Kaydı',
      discoveredAt: 'Ana giriş',
      relatedSuspectIds: ['supheli_d002_002'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d002_010',
      title: 'Arşiv kapısı anahtar defteri',
      description:
          'Bodrum arşiv kapısının anahtarı 16.30\'da "Prof. Sezer adına, '
          'M.K." imzasıyla alınmış. İade imzası yok; anahtar ertesi sabah '
          '07.45\'te güvenlik masasında bulunmuş. Bodrum arşivinden galeri '
          'kata bir iç merdiven çıkıyor; bu geçit kartlı sistemde de '
          'kamerada da yok.',
      type: 'Belge',
      discoveredAt: 'Güvenlik masası',
      relatedSuspectIds: ['supheli_d002_001', 'supheli_d002_005'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d002_011',
      title: 'Sessiz çalışma odası oturum kaydı',
      description:
          'Melis Karaca\'nın adına 21.00 - 23.00 arası çalışma masası '
          'rezervasyonu var ve bilgisayar oturumu gece boyunca açık kalmış. '
          'Masa, galeri merdivenine yirmi metre uzaklıkta.',
      type: 'Dijital Delil',
      discoveredAt: 'Sessiz çalışma odası',
      relatedSuspectIds: ['supheli_d002_005'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d002_012',
      title: 'Gönderilmemiş telefon mesajı',
      description:
          'Kerem\'in telefonunda Emre Bulut\'a yazılmış ama gönderilmemiş '
          'bir taslak var: "Yarın konuşmamız lazım, yayın sırası meselesini '
          'çözelim." Saat damgası 22.30.',
      type: 'Dijital Delil',
      discoveredAt: 'Kurbanın telefonu',
      relatedSuspectIds: ['supheli_d002_002'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d002_013',
      title: 'Devriye çipi kaydı',
      description:
          'Gökhan Aydemir\'in devriye çipinde 22.10 ve 22.55 noktaları '
          'okutulmuş. 23.12 ile 23.28 arasında hiçbir nokta okutulmamış. '
          'Devriye güzergâhı galeri katı da kapsıyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Güvenlik odası',
      relatedSuspectIds: ['supheli_d002_003'],
      importance: 'Orta',
    ),
  ];
}

/// DAVA 003 — Eski Aile Evinde Miras delilleri (ZOR).
List<Evidence> dava003Delilleri() {
  return [
    Evidence(
      id: 'delil_d003_001',
      title: 'Adli tıp raporu',
      description:
          'Ölüm ilk bakışta kalp krizi sanılmıştı. Kan tahlilinde digoksin '
          'seviyesi toksik sınırın çok üzerinde. Oran, günlük doz hatasıyla '
          'ya da zamanla birikmeyle uyumlu değil; tek seferde, ezilmiş '
          'yaklaşık dört tabletlik bir alım gösteriyor.',
      type: 'Adli Tıp',
      discoveredAt: 'Adli Tıp Kurumu',
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d003_002',
      title: 'Avukatla telefon notu',
      description:
          'Nazmiye\'nin avukatı, kendisini o sabah saat 11.20\'de yalının '
          'sabit hattından aradığını doğruladı. Vasiyeti değiştirmek '
          'istiyordu: kızı Sibel\'i mirastan çıkaracak, yalıyı torunu Deniz\'e '
          'bırakacak, oğlu Kaan\'a da borçlarını kapatacak bir tutar '
          'verecekti. Yeni vasiyet henüz imzalanmamıştı.',
      type: 'Belge',
      discoveredAt: 'Avukatın ofisi',
      relatedSuspectIds: [
        'supheli_d003_002',
        'supheli_d003_001',
        'supheli_d003_003',
      ],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d003_003',
      title: 'Eksik ilaç tabletleri',
      description:
          'Sibel\'in çantasındaki 0,25 mg digoksin kutusunda, reçete '
          'miktarına göre dört tablet eksik. Kalp ritim sorunu nedeniyle '
          'Sibel de bu ilacı kullanıyor. Eşi Dr. Tarık Kaya\'nın da '
          'kardiyoloji uzmanı olarak aynı ilaca erişimi var.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Sibel\'in çantası',
      relatedSuspectIds: ['supheli_d003_002', 'supheli_d003_004'],
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d003_004',
      title: 'Çay fincanındaki kalıntı',
      description:
          'Nazmiye\'nin son içtiği çay fincanının dibinde, ezilmiş '
          'beyaz-krem bir toz kalıntısı var. Analiz, bunun 0,25 mg\'lık '
          'digoksin tableti olduğunu gösteriyor. Nazmiye\'nin kendi düzenli '
          'ilacı ise 0,125 mg\'lık tablet.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Mutfak, bulaşık tezgâhı',
      importance: 'Yüksek',
    ),
    Evidence(
      id: 'delil_d003_005',
      title: 'Mutfağa giriş-çıkış ifadeleri',
      description:
          'Çayların hazırlandığı saatlerde mutfağa kimin girdiği '
          'konusunda ifadeler çelişiyor. Kaan yalnızca Sibel ile Deniz\'in '
          'girdiğini söylüyor. Sibel, Kaan\'ın da içeride olduğunu iddia '
          'ediyor. Zehra dört kişi saydığını belirtiyor: Kaan, Deniz, kendisi '
          've Sibel. Tarık mutfağa hiç girmediğini söylüyor.',
      type: 'Belge',
      discoveredAt: 'Tanık ifadeleri',
      relatedSuspectIds: [
        'supheli_d003_001',
        'supheli_d003_002',
        'supheli_d003_003',
        'supheli_d003_005',
      ],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_006',
      title: 'Bahçe havai fişek videosu',
      description:
          'Bir aile üyesinin telefonuyla çektiği video, saat damgasına '
          'göre 20.50\'de başlıyor. Kaan ve Kaan\'ın eşi görüntü boyunca '
          'kadrajda. Deniz 20.53 - 20.55 arasında, Sibel ise 20.52 - 20.57 '
          'arasında kadrajda görünmüyor. Yalının balkonunda telefonla '
          'konuşan Tarık\'ın silueti görülüyor.',
      type: 'Görüntü Kaydı',
      discoveredAt: 'Aile üyesinin telefonu',
      relatedSuspectIds: ['supheli_d003_002', 'supheli_d003_003'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_007',
      title: 'Nazmiye\'nin günlüğü',
      description:
          'Günlüğünde Sibel\'in yalıyı satıp parayı paylaştırmak '
          'istediğini, kendisinin ise yalıyı ailede tutmak istediğini '
          'yazmış. "Tarık\'ın kliniği için de para istiyorlar, bu işin '
          'sonu yok" cümlesi de var. Son sayfada: "Sibel\'le yine '
          'tartıştık, bu iş böyle gitmeyecek."',
      type: 'Belge',
      discoveredAt: 'Yatak odası, başucu masası',
      relatedSuspectIds: ['supheli_d003_002', 'supheli_d003_004'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_008',
      title: 'Deniz\'in gizli mesajı',
      description:
          'Deniz\'in telefonunda, nişanlısına yazdığı ve ailesine '
          'söylemediği bir nişan haberi mesajı var. Mesaj 20.54\'te, '
          'yalının sandal evi Wi-Fi ağı üzerinden gönderilmiş.',
      type: 'Dijital Delil',
      discoveredAt: 'Deniz\'in telefonu',
      relatedSuspectIds: ['supheli_d003_003'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_009',
      title: 'Tarık\'ın telefon görüşme kaydı',
      description:
          'Dr. Tarık Kaya\'nın telefonu 20.44 ile 21.12 arasında kesintisiz '
          'bir arama gösteriyor. Arama sırasında baz istasyonu ve Wi-Fi '
          'yalının üst kat balkonunu işaret ediyor. Aranan kişi bir '
          'meslektaşı ve görüşmeyi doğruluyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Telefon dökümü',
      relatedSuspectIds: ['supheli_d003_004'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_010',
      title: 'Haftalık ilaç kutusu',
      description:
          'Nazmiye\'nin haftalık ilaç kutusunda 0,125 mg digoksin '
          'tabletleri eksiksiz. Ancak kutunun kilidi açık bulundu. '
          'Kutuyu düzenleyen kişi yardımcı Zehra Yıldız.',
      type: 'Fiziksel Delil',
      discoveredAt: 'Nazmiye\'nin odası',
      relatedSuspectIds: ['supheli_d003_005'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_011',
      title: 'Kaan\'ın borç belgeleri',
      description:
          'Kaan Erdem\'in restoranı için alınmış 800.000 TL\'lik '
          'kredinin ödeme uyarıları ve bir kumar sitesinden gelen '
          'borç bildirimi var. Kaan\'ın annesine üç gün önce yazdığı '
          'mesaj: "Anne son kez rica ediyorum."',
      type: 'Belge',
      discoveredAt: 'Kaan\'ın telefonu ve evrakları',
      relatedSuspectIds: ['supheli_d003_001'],
      importance: 'Orta',
    ),
    Evidence(
      id: 'delil_d003_012',
      title: 'Yalı hareket sensörü kaydı',
      description:
          'Yalının güvenlik sistemi mutfak sensörü: 20.30 hareket, 20.35 '
          'hareket, 20.41 - 20.49 sürekli hareket, 20.52 - 20.56 hareket, '
          '20.58 hareket. Üst kat koridor sensörü 20.51 - 20.57 arasında '
          'hareket göstermiş. Sensör kimin hareket ettiğini kaydetmiyor.',
      type: 'Dijital Delil',
      discoveredAt: 'Yalı güvenlik paneli',
      relatedSuspectIds: [
        'supheli_d003_002',
        'supheli_d003_003',
        'supheli_d003_005',
      ],
      importance: 'Yüksek',
    ),
  ];
}
