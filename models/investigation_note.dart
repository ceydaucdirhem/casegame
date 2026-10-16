/// Oyuncunun soruşturma sırasında yazdığı bir notu temsil eder.
class InvestigationNote {
  final String id;
  String content;
  final DateTime createdAt;

  InvestigationNote({
    required this.id,
    required this.content,
    required this.createdAt,
  });
}
