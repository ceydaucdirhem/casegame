import '../models/case_file.dart';
import 'evidence_data.dart';
import 'suspect_data.dart';

/// Oyundaki cinayet dosyalari.
///
/// Fonksiyon kullaniyoruz cunku delillerin isInspected alani oyun sirasinda
/// degisiyor; her cagrildiginda temiz bir liste uretmesi gerekiyor.
List<CaseFile> tumDavalar() {
  return [
    CaseFile(
      id: 'dava_001',
      title: 'Kadıköy Apartman Cinayeti',
      location: 'Moda, Kadıköy, İstanbul',
      date: '14 Mart 2024',
      summary:
          'Moda\'da beş katlı bir apartmanın üçüncü katında yaşayan Selin Aydın, '
          '14 Mart sabahı evinde ölü bulundu. Kapıda zorlama izi yok; kurban '
          'katili içeri kendisi almış olmalı. Apartman kamerası gece 22.00 ile '
          '23.15 arasında kayıt yapmamış. Salondaki duvar saati 22.47\'de durmuş. '
          'Selin\'in çevresindeki herkesin o gece saklayacak bir şeyi var; '
          'ama saklamak, katil olmak demek değil.',
      victimName: 'Selin Aydın',
      victimAge: 29,
      victimJob: 'Grafik tasarımcı, ofis ortağı',
      timeOfDeath: '22.30 - 23.30 arası',
      difficulty: 'Zor',
      evidenceList: dava001Delilleri(),
      suspects: dava001Supheliler,
      correctSuspectId: 'supheli_003',
      isCompleted: false,
    ),
    CaseFile(
      id: 'dava_002',
      title: 'Üniversite Kütüphanesinde Son Gece',
      location: 'Beşiktaş, İstanbul',
      date: '2 Kasım 2024',
      summary:
          'Bir devlet üniversitesinin kütüphanesinde, kapanış saatinden sonra '
          'araştırma görevlisi Kerem Doğan\'ın cesedi bulundu. Ceset galeri '
          'katın altındaki merdiven boşluğunda. Ölüm düşmeye bağlı görünüyor '
          'ama vücutta boğuşma izleri var. Güvenlik defteri, kartlı geçiş '
          'kayıtları ve tanık ifadeleri birbirini tutmuyor.',
      victimName: 'Kerem Doğan',
      victimAge: 34,
      victimJob: 'Araştırma görevlisi',
      timeOfDeath: '23.15 - 23.45 arası',
      difficulty: 'Zor',
      evidenceList: dava002Delilleri(),
      suspects: dava002Supheliler,
      correctSuspectId: 'supheli_d002_001',
      isCompleted: false,
    ),
    CaseFile(
      id: 'dava_003',
      title: 'Eski Aile Evinde Miras',
      location: 'Beykoz, İstanbul',
      date: '28 Aralık 2023',
      summary:
          'Aile yadigârı bir yalıda yılbaşı öncesi toplanan kalabalık bir ailede, '
          'evin sahibi Nazmiye Hanım kalp krizi geçirdi sanıldı. Adli tıp raporu '
          'ise başka bir şey söylüyor. O gece evde yedi kişi vardı; çayların '
          'hazırlandığı sırada mutfağa kimin girdiği konusunda herkes farklı '
          'bir şey anlatıyor.',
      victimName: 'Nazmiye Erdem',
      victimAge: 71,
      victimJob: 'Emekli',
      timeOfDeath: 'Akşam çayından sonra, yaklaşık 21.30 - 22.30 arası',
      difficulty: 'Zor',
      evidenceList: dava003Delilleri(),
      suspects: dava003Supheliler,
      correctSuspectId: 'supheli_d003_002',
      isCompleted: false,
    ),
  ];
}
