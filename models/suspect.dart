/// Bir supheliyi temsil eden model sinifi.
///
/// DIKKAT — GUVENLIK NOTU:
/// secret, lies ve isKiller alanlari oyunun cozumunu icerir.
/// Su an ogrenme kolayligi icin bunlari Flutter tarafinda tutuyoruz.
/// 17. adimda backend'i kurdugumuzda bu gizli alanlari Node.js tarafina
/// tasiyacagiz; Flutter'da sadece oyuncunun gorebilecegi bilgiler kalacak.
class Suspect {
  // --- Oyuncunun gorebilecegi bilgiler ---
  final String id;
  final String name;
  final int age;
  final String job;
  final String description; // Kisa tanitim
  final String relationToVictim; // Kurbanla iliskisi
  final String statedAlibi; // Ilk ifadesinde verdigi alibi

  // --- Yapay zekanin karakteri canlandirmasi icin gereken bilgiler ---
  final String personality;
  final String speakingStyle;

  // --- GIZLI BILGILER (oyuncuya gosterilmez) ---
  final String secret; // Sakladigi sir
  final String truth; // O gece gercekte ne yapti
  final List<String> lies; // Soyleyecegi yalanlar
  final List<String> knows; // Bildigi bilgiler
  final List<String> doesNotKnow; // Bilmedigi, uydurmamasi gereken bilgiler
  final bool isKiller;

  const Suspect({
    required this.id,
    required this.name,
    required this.age,
    required this.job,
    required this.description,
    required this.relationToVictim,
    required this.statedAlibi,
    required this.personality,
    required this.speakingStyle,
    required this.secret,
    required this.truth,
    this.lies = const [],
    this.knows = const [],
    this.doesNotKnow = const [],
    this.isKiller = false,
  });
}
