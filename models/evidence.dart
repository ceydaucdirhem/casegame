/// Bir delili temsil eden model sinifi.
///
/// type alani icin kullandigimiz degerler:
/// "Fiziksel Delil", "Dijital Delil", "Adli Tıp", "Görüntü Kaydı", "Belge"
///
/// importance alani icin: "Düşük", "Orta", "Yüksek"
class Evidence {
  final String id;
  final String title;
  final String description;
  final String type;
  final String discoveredAt; // Delilin bulundugu yer
  final List<String> relatedSuspectIds; // Hangi supheliyle baglantili
  final String importance;

  /// Oyuncu bu delili inceledi mi? Oyun sirasinda degisecegi icin final degil.
  bool isInspected;

  Evidence({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.discoveredAt,
    this.relatedSuspectIds = const [],
    this.importance = 'Orta',
    this.isInspected = false,
  });
}
