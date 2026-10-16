import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/conversation_message.dart';

/// Node.js backend'i ile konusan servis.
///
/// baseUrl'i calistigin ortama gore degistirmen gerekebilir:
/// - Gercek telefon / iOS simulator / Chrome (web)  -> http://localhost:3000
/// - Android emulator                                -> http://10.0.2.2:3000
///   (Android emulator kendi "localhost"unu farkli yorumlar, bu yuzden
///   bilgisayarindaki sunucuya ulasmak icin ozel bir adres kullanir.)
class ApiService {
  static const String baseUrl = 'http://localhost:3000';

  /// Bir supheliye mesaj gonderir ve cevabini doner.
  ///
  /// [caseId] ve [suspectId] hangi dava/supheli oldugunu belirtir.
  /// [message] oyuncunun yeni sorusu.
  /// [history] o ana kadarki konusma (backend'e gonderilecek format).
  static Future<String> supheliyeMesajGonder({
    required String caseId,
    required String suspectId,
    required String message,
    required List<ConversationMessage> history,
  }) async {
    final uri = Uri.parse('$baseUrl/api/chat');

    final response = await http
        .post(
          uri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode({
            'caseId': caseId,
            'suspectId': suspectId,
            'message': message,
            'history': history.map((m) => m.toApiMap()).toList(),
          }),
        )
        .timeout(const Duration(seconds: 30));

    if (response.statusCode != 200) {
      throw Exception(
        'Sunucu hatası (${response.statusCode}): ${response.body}',
      );
    }

    final data = jsonDecode(utf8.decode(response.bodyBytes));
    return data['reply'] as String;
  }
}
