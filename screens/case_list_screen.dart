import 'package:flutter/material.dart';
import '../data/case_data.dart';
import '../models/case_file.dart';
import '../theme/app_theme.dart';
import '../widgets/case_card.dart';
import 'case_detail_screen.dart';

/// Cinayet dosyalarinin listelendigi ekran.
///
/// StatefulWidget kullaniyoruz cunku dava listesini bir kez uretip
/// hafizada tutmamiz gerekiyor. Ekran her yenilendiginde listeyi
/// bastan uretirsek oyuncunun ilerlemesi (incelenen delil isaretleri) silinir.
class CaseListScreen extends StatefulWidget {
  const CaseListScreen({super.key});

  @override
  State<CaseListScreen> createState() => _CaseListScreenState();
}

class _CaseListScreenState extends State<CaseListScreen> {
  late final List<CaseFile> davalar;

  @override
  void initState() {
    super.initState();
    davalar = tumDavalar();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CİNAYET DOSYALARI'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ust bilgi seridi
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              color: AppColors.koyuGri,
              child: Row(
                children: [
                  const Icon(Icons.info_outline,
                      size: 16, color: AppColors.soluk),
                  const SizedBox(width: 8),
                  Text(
                    'Toplam ${davalar.length} açık dosya bulunuyor.',
                    style:
                        const TextStyle(color: AppColors.soluk, fontSize: 13),
                  ),
                ],
              ),
            ),

            // Dosya listesi
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
                itemCount: davalar.length,
                itemBuilder: (context, index) {
                  final dava = davalar[index];
                  return CaseCard(
                    dava: dava,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => CaseDetailScreen(dava: dava),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
