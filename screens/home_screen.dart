import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import 'case_list_screen.dart';

/// Oyunun ana menu ekrani.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  /// "Nasil Oynanir?" penceresini acar.
  void _nasilOynanirGoster(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: AppColors.koyuGri,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: AppColors.acikGri),
        ),
        title: const Text(
          'Nasıl Oynanır?',
          style: TextStyle(color: AppColors.krem, fontSize: 18),
        ),
        content: const Text(
          '1. Bir cinayet dosyası seç.\n\n'
          '2. Olay özetini, delilleri ve tanık ifadelerini incele.\n\n'
          '3. Şüphelilerle konuş, sorular sor. Verdikleri cevaplar '
          'arasındaki çelişkileri yakala.\n\n'
          '4. Notlarını soruşturma panosuna yaz.\n\n'
          '5. Hazır olduğunda katili suçla. Tek hakkın var.',
          style: TextStyle(color: AppColors.krem, height: 1.6, fontSize: 14),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'ANLADIM',
              style: TextStyle(color: AppColors.acikBordo),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(flex: 2),

              // Logo alani
              Center(
                child: Container(
                  width: 92,
                  height: 92,
                  decoration: BoxDecoration(
                    color: AppColors.koyuGri,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.bordo, width: 2),
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 44,
                    color: AppColors.bordo,
                  ),
                ),
              ),
              const SizedBox(height: 28),

              // Oyun adi
              const Text(
                'DOSYA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.soluk,
                  fontSize: 16,
                  letterSpacing: 8,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'SON İFADE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.krem,
                  fontSize: 38,
                  letterSpacing: 4,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: 60,
                  height: 2,
                  color: AppColors.bordo,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Her dosyanın bir sonu vardır.\n'
                'Soru, o sona kimin sebep olduğudur.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.soluk,
                  fontSize: 13,
                  height: 1.6,
                  fontStyle: FontStyle.italic,
                ),
              ),

              const Spacer(flex: 3),

              // Butonlar
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CaseListScreen(),
                    ),
                  );
                },
                child: const Text('DOSYALARI AÇ'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () => _nasilOynanirGoster(context),
                child: const Text('NASIL OYNANIR?'),
              ),

              const Spacer(flex: 1),

              const Text(
                'sürüm 0.1',
                textAlign: TextAlign.center,
                style: TextStyle(color: AppColors.soluk, fontSize: 11),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
