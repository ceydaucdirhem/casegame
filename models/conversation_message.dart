/// Sohbet ekranındaki tek bir mesajı temsil eder.
/// isUser true ise oyuncunun mesajıdır, false ise şüphelinin cevabıdır.
class ConversationMessage {
  final String content;
  final bool isUser;
  final DateTime sentAt;

  ConversationMessage({
    required this.content,
    required this.isUser,
    required this.sentAt,
  });

  /// Backend'e gönderilecek formata çevirir: {"role": "...", "content": "..."}
  Map<String, String> toApiMap() {
    return {
      'role': isUser ? 'user' : 'assistant',
      'content': content,
    };
  }
}
