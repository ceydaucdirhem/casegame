import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../theme/app_theme.dart';
import '../widgets/suspect_card.dart';
import 'suspect_detail_screen.dart';

/// Bir davanin butun supheli listesini gosteren ekran.
class SuspectScreen extends StatelessWidget {
  final CaseFile dava;

  const SuspectScreen({super.key, required this.dava});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ŞÜPHELİLER'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              color: AppColors.koyuGri,
              child: Text(
                '${dava.suspects.length} kişi sorgulanabilir',
                style: const TextStyle(color: AppColors.soluk, fontSize: 13),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                itemCount: dava.suspects.length,
                itemBuilder: (context, index) {
                  final supheli = dava.suspects[index];
                  return SuspectCard(
                    supheli: supheli,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SuspectDetailScreen(
                                caseId: dava.id,
                                supheli: supheli,
                              ),
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
