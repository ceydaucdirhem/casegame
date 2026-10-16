import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../models/suspect.dart';
import '../theme/app_theme.dart';

/// Suclama sonucunu gosteren ekran.
/// Oyuncu dogru veya yanlis tahmin etmis olabilir; her iki durumda da
/// gercek katili ve olayin gercek akisini acikliyoruz.
class ResultScreen extends StatelessWidget {
  final CaseFile dava;
  final Suspect suclananSupheli;
  final bool dogruMu;

  const ResultScreen({
    super.key,
    required this.dava,
    required this.suclananSupheli,
    required this.dogruMu,
  });

  @override
  Widget build(BuildContext context) {
    final gercekKatil = dava.suspects.firstWhere((s) => s.isKiller);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 1),

              Center(
                child: Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    color: AppColors.koyuGri,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: dogruMu ? AppColors.koyuMor : AppColors.bordo,
                      width: 2,
                    ),
                  ),
                  child: Icon(
                    dogruMu ? Icons.check : Icons.close,
                    size: 42,
                    color: dogruMu ? AppColors.koyuMor : AppColors.acikBordo,
                  ),
                ),
              ),
              const SizedBox(height: 24),

              Text(
                dogruMu ? 'DOSYA ÇÖZÜLDÜ' : 'YANLIŞ ŞÜPHELİ',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: AppColors.krem,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                dogruMu
                    ? '${suclananSupheli.name} kişisini doğru şekilde suçladın.'
                    : '${suclananSupheli.name} suçlu değildi. '
                        'Gerçek katil ${gercekKatil.name} idi.',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: AppColors.soluk, fontSize: 14, height: 1.5),
              ),

              const SizedBox(height: 28),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: AppColors.koyuGri,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.acikGri),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'GERÇEKTE NE OLDU?',
                      style: TextStyle(
                        color: AppColors.soluk,
                        fontSize: 11,
                        letterSpacing: 1.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      gercekKatil.truth,
                      style: const TextStyle(
                        color: AppColors.krem,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(flex: 2),

              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .popUntil((route) => route.isFirst);
                },
                child: const Text('ANA MENÜYE DÖN'),
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
