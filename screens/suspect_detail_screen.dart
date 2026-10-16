import 'package:flutter/material.dart';
import '../models/suspect.dart';
import '../theme/app_theme.dart';
import 'suspect_chat_screen.dart';

/// Tek bir suphelinin detayini gosteren ekran.
///
/// DIKKAT: Burada sadece oyuncunun gorebilecegi alanlar gosteriliyor
/// (name, age, job, description, relationToVictim, statedAlibi,
/// personality, speakingStyle). secret / truth / lies / isKiller gibi
/// gizli alanlara bu ekranda ASLA dokunmuyoruz.
class SuspectDetailScreen extends StatelessWidget {
  final String caseId;
  final Suspect supheli;

  const SuspectDetailScreen({
    super.key,
    required this.caseId,
    required this.supheli,
  });

  Widget _bolumBasligi(String metin) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, top: 22),
      child: Text(
        metin,
        style: const TextStyle(
          color: AppColors.soluk,
          fontSize: 12,
          letterSpacing: 1.5,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(supheli.name),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Center(
              child: Container(
                width: 84,
                height: 84,
                decoration: const BoxDecoration(
                  color: AppColors.koyuGri,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.person_outline,
                    size: 40, color: AppColors.soluk),
              ),
            ),
            const SizedBox(height: 14),
            Text(
              '${supheli.name} · ${supheli.age}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppColors.krem,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              supheli.job,
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.soluk, fontSize: 13),
            ),

            _bolumBasligi('TANITIM'),
            Text(
              supheli.description,
              style: const TextStyle(
                  color: AppColors.krem, fontSize: 14, height: 1.6),
            ),

            _bolumBasligi('KURBANLA İLİŞKİSİ'),
            Text(
              supheli.relationToVictim,
              style: const TextStyle(
                  color: AppColors.krem, fontSize: 14, height: 1.6),
            ),

            _bolumBasligi('İLK İFADESİ'),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.koyuGri,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.acikGri),
              ),
              child: Text(
                '"${supheli.statedAlibi}"',
                style: const TextStyle(
                  color: AppColors.krem,
                  fontSize: 14,
                  height: 1.6,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            const SizedBox(height: 28),
            OutlinedButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SuspectChatScreen(
                      caseId: caseId,
                      supheli: supheli,
                    ),
                  ),
                );
              },
              icon: const Icon(Icons.chat_bubble_outline, size: 18),
              label: const Text('ŞÜPHELİYİ SORGULA'),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
