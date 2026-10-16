import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../models/suspect.dart';
import '../theme/app_theme.dart';
import 'result_screen.dart';

/// Oyuncunun sec bir supheliyi katil olarak suclayacagi ekran.
/// Tek hakki var; suclama yapinca sonuc ekranina gecilir.
class AccusationScreen extends StatefulWidget {
  final CaseFile dava;

  const AccusationScreen({super.key, required this.dava});

  @override
  State<AccusationScreen> createState() => _AccusationScreenState();
}

class _AccusationScreenState extends State<AccusationScreen> {
  Suspect? _secilen;

  void _onaylaDiyaloguGoster() {
    if (_secilen == null) return;

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.koyuGri,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.acikGri),
        ),
        title: const Text(
          'Emin misin?',
          style: TextStyle(color: AppColors.krem, fontSize: 18),
        ),
        content: Text(
          '${_secilen!.name} kişisini katil olarak suçlamak üzeresin. '
          'Bu kararı geri alamazsın. Devam etmek istiyor musun?',
          style: const TextStyle(color: AppColors.krem, height: 1.5),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'VAZGEÇ',
              style: TextStyle(color: AppColors.soluk),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // dialogu kapat
              final dogruMu = _secilen!.id == widget.dava.correctSuspectId;
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    dava: widget.dava,
                    suclananSupheli: _secilen!,
                    dogruMu: dogruMu,
                  ),
                ),
              );
            },
            child: const Text(
              'SUÇLA',
              style: TextStyle(
                color: AppColors.acikBordo,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KATİLİ SUÇLA'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              color: AppColors.koyuGri,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Tek hakkın var.',
                    style: TextStyle(
                      color: AppColors.acikBordo,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Delilleri ve ifadeleri dikkatlice değerlendirdiğinden '
                    'emin olduğunda, katil olduğunu düşündüğün kişiyi seç.',
                    style: TextStyle(
                        color: AppColors.soluk, fontSize: 13, height: 1.5),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: widget.dava.suspects.length,
                itemBuilder: (context, index) {
                  final supheli = widget.dava.suspects[index];
                  final seciliMi = _secilen?.id == supheli.id;

                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: AppColors.koyuGri,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color:
                            seciliMi ? AppColors.acikBordo : AppColors.acikGri,
                        width: seciliMi ? 1.6 : 1,
                      ),
                    ),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(8),
                        onTap: () => setState(() => _secilen = supheli),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Row(
                            children: [
                              Icon(
                                seciliMi
                                    ? Icons.radio_button_checked
                                    : Icons.radio_button_off,
                                color: seciliMi
                                    ? AppColors.acikBordo
                                    : AppColors.soluk,
                                size: 20,
                              ),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${supheli.name} (${supheli.age})',
                                      style: const TextStyle(
                                        color: AppColors.krem,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      supheli.job,
                                      style: const TextStyle(
                                          color: AppColors.soluk,
                                          fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: _secilen == null ? null : _onaylaDiyaloguGoster,
                child: const Text('SUÇLAMAYI ONAYLA'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
