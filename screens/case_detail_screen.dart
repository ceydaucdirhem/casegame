import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../theme/app_theme.dart';
import 'evidence_screen.dart';
import 'suspect_screen.dart';
import 'investigation_board_screen.dart';
import 'accusation_screen.dart';

/// Bir cinayet dosyasinin detayini gosteren ekran.
/// Olay ozeti + delillere ve supheliler ekranina gecis butonlari burada.
class CaseDetailScreen extends StatelessWidget {
  final CaseFile dava;

  const CaseDetailScreen({super.key, required this.dava});

  Widget _bilgiSatiri(IconData icon, String etiket, String deger) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 16, color: AppColors.soluk),
          const SizedBox(width: 10),
          SizedBox(
            width: 90,
            child: Text(
              etiket,
              style: const TextStyle(color: AppColors.soluk, fontSize: 12),
            ),
          ),
          Expanded(
            child: Text(
              deger,
              style: const TextStyle(
                color: AppColors.krem,
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _gecisButonu({
    required BuildContext context,
    required IconData icon,
    required String baslik,
    required String altBaslik,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.koyuGri,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.acikGri),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Container(
                  width: 42,
                  height: 42,
                  decoration: BoxDecoration(
                    color: AppColors.acikGri,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(icon, color: AppColors.acikBordo, size: 20),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        baslik,
                        style: const TextStyle(
                          color: AppColors.krem,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        altBaslik,
                        style: const TextStyle(
                          color: AppColors.soluk,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right,
                    color: AppColors.soluk, size: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final icerikHazir = dava.suspects.isNotEmpty;

    return Scaffold(
      appBar: AppBar(
        title: Text(dava.id.toUpperCase()),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              dava.title,
              style: const TextStyle(
                color: AppColors.krem,
                fontSize: 22,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.koyuGri,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.acikGri),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _bilgiSatiri(Icons.location_on_outlined, 'Konum', dava.location),
                  _bilgiSatiri(Icons.calendar_today_outlined, 'Tarih', dava.date),
                  _bilgiSatiri(Icons.person_outline, 'Maktul',
                      '${dava.victimName} (${dava.victimAge})'),
                  if (dava.victimJob.isNotEmpty)
                    _bilgiSatiri(Icons.work_outline, 'Meslek', dava.victimJob),
                  if (dava.timeOfDeath.isNotEmpty)
                    _bilgiSatiri(Icons.access_time, 'Ölüm Saati', dava.timeOfDeath),
                ],
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'OLAY ÖZETİ',
              style: TextStyle(
                color: AppColors.soluk,
                fontSize: 12,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              dava.summary,
              style: const TextStyle(
                color: AppColors.krem,
                fontSize: 14,
                height: 1.6,
              ),
            ),
            const SizedBox(height: 28),

            if (!icerikHazir)
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.koyuGri,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.acikGri),
                ),
                child: const Text(
                  'Bu dosyanın delilleri ve şüphelileri henüz eklenmedi.',
                  style: TextStyle(color: AppColors.soluk, fontSize: 13),
                ),
              )
            else ...[
              const Text(
                'SORUŞTURMA',
                style: TextStyle(
                  color: AppColors.soluk,
                  fontSize: 12,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              _gecisButonu(
                context: context,
                icon: Icons.search,
                baslik: 'Deliller',
                altBaslik: '${dava.delilSayisi} delil bulundu',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EvidenceScreen(dava: dava),
                    ),
                  );
                },
              ),
              _gecisButonu(
                context: context,
                icon: Icons.people_outline,
                baslik: 'Şüpheliler',
                altBaslik: '${dava.supheliSayisi} kişi sorgulanabilir',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SuspectScreen(dava: dava),
                    ),
                  );
                },
              ),
              _gecisButonu(
                context: context,
                icon: Icons.dashboard_outlined,
                baslik: 'Soruşturma Panosu',
                altBaslik: 'Deliller, şüpheliler ve notların hepsi bir arada',
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          InvestigationBoardScreen(dava: dava),
                    ),
                  );
                },
              ),
              const SizedBox(height: 8),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.acikBordo,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AccusationScreen(dava: dava),
                    ),
                  );
                },
                icon: const Icon(Icons.gavel, size: 18),
                label: const Text('KATİLİ SUÇLA'),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
