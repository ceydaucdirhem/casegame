import 'package:flutter/material.dart';
import '../models/conversation_message.dart';
import '../models/suspect.dart';
import '../services/api_service.dart';
import '../theme/app_theme.dart';
import '../widgets/chat_bubble.dart';

/// Oyuncunun bir suphe ile Turkce sohbet ettigi, yapay zeka destekli
/// sorgulama ekrani.
class SuspectChatScreen extends StatefulWidget {
  final String caseId;
  final Suspect supheli;

  const SuspectChatScreen({
    super.key,
    required this.caseId,
    required this.supheli,
  });

  @override
  State<SuspectChatScreen> createState() => _SuspectChatScreenState();
}

class _SuspectChatScreenState extends State<SuspectChatScreen> {
  final List<ConversationMessage> _mesajlar = [];
  final TextEditingController _mesajController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _cevapBekleniyor = false;

  @override
  void dispose() {
    _mesajController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _enAltaKaydir() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _mesajGonder() async {
    final metin = _mesajController.text.trim();
    if (metin.isEmpty || _cevapBekleniyor) return;

    // Onceki mesajlari backend'e gondermeden once, yeni mesaj gelmeden
    // onceki gecmisi kopyalayalim (siparis onemli).
    final gecmis = List<ConversationMessage>.from(_mesajlar);

    setState(() {
      _mesajlar.add(ConversationMessage(
        content: metin,
        isUser: true,
        sentAt: DateTime.now(),
      ));
      _mesajController.clear();
      _cevapBekleniyor = true;
    });
    _enAltaKaydir();

    try {
      final cevap = await ApiService.supheliyeMesajGonder(
        caseId: widget.caseId,
        suspectId: widget.supheli.id,
        message: metin,
        history: gecmis,
      );

      setState(() {
        _mesajlar.add(ConversationMessage(
          content: cevap,
          isUser: false,
          sentAt: DateTime.now(),
        ));
        _cevapBekleniyor = false;
      });
      _enAltaKaydir();
    } catch (hata) {
      setState(() {
        _cevapBekleniyor = false;
      });
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: AppColors.bordo,
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Bağlantı hatası: Backend sunucusu çalışıyor mu? ($hata)',
            style: const TextStyle(color: AppColors.krem, fontSize: 12),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.supheli.name),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: AppColors.koyuGri,
              child: Text(
                '${widget.supheli.job} · ${widget.supheli.age} yaşında',
                style: const TextStyle(color: AppColors.soluk, fontSize: 12),
              ),
            ),
            Expanded(
              child: _mesajlar.isEmpty
                  ? const Center(
                      child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                          'Sorgulamaya başlamak için bir soru yaz.\n'
                          'Örn: "Cinayet gecesi neredeydiniz?"',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: AppColors.soluk, fontSize: 13, height: 1.5),
                        ),
                      ),
                    )
                  : ListView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(16),
                      itemCount: _mesajlar.length,
                      itemBuilder: (context, index) {
                        return ChatBubble(mesaj: _mesajlar[index]);
                      },
                    ),
            ),
            if (_cevapBekleniyor)
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text(
                  'Şüpheli yazıyor...',
                  style: TextStyle(color: AppColors.soluk, fontSize: 12),
                ),
              ),
            Container(
              padding: const EdgeInsets.all(12),
              color: AppColors.koyuGri,
              child: SafeArea(
                top: false,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _mesajController,
                        enabled: !_cevapBekleniyor,
                        style: const TextStyle(
                            color: AppColors.krem, fontSize: 14),
                        cursorColor: AppColors.acikBordo,
                        onSubmitted: (_) => _mesajGonder(),
                        decoration: InputDecoration(
                          hintText: 'Bir soru yaz...',
                          hintStyle: const TextStyle(
                              color: AppColors.soluk, fontSize: 13),
                          filled: true,
                          fillColor: AppColors.siyah,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      onPressed: _cevapBekleniyor ? null : _mesajGonder,
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.bordo,
                        foregroundColor: AppColors.krem,
                        disabledBackgroundColor: AppColors.acikGri,
                        padding: const EdgeInsets.all(12),
                      ),
                      icon: const Icon(Icons.send, size: 18),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
