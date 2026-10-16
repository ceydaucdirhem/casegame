import 'evidence.dart';
import 'suspect.dart';

/// Bir cinayet dosyasini temsil eden model sinifi.
class CaseFile {
  final String id;
  final String title;
  final String location;
  final String date;
  final String summary;
  final String victimName;
  final int victimAge;
  final String victimJob;
  final String timeOfDeath; // Adli tibba gore olum saati araligi
  final String difficulty; // "Kolay", "Orta", "Zor"

  final List<Evidence> evidenceList;
  final List<Suspect> suspects;

  /// Katilin id'si. 23. adimda suclama ekraninda kullanacagiz.
  final String correctSuspectId;

  final bool isCompleted;

  CaseFile({
    required this.id,
    required this.title,
    required this.location,
    required this.date,
    required this.summary,
    required this.victimName,
    required this.victimAge,
    this.victimJob = '',
    this.timeOfDeath = '',
    required this.difficulty,
    this.evidenceList = const [],
    this.suspects = const [],
    this.correctSuspectId = '',
    this.isCompleted = false,
  });

  /// Dosyada kac delil var?
  int get delilSayisi => evidenceList.length;

  /// Dosyada kac supheli var?
  int get supheliSayisi => suspects.length;
}
