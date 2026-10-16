import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../theme/app_theme.dart';
import '../widgets/evidence_card.dart';
import 'evidence_detail_screen.dart';

/// Bir davanin butun delillerini listeleyen ekran.
class EvidenceScreen extends StatefulWidget {
  final CaseFile dava;

  const EvidenceScreen({super.key, required this.dava});

  @override
  State<EvidenceScreen> createState() => _EvidenceScreenState();
}

class _EvidenceScreenState extends State<EvidenceScreen> {
  @override
  Widget build(BuildContext context) {
    final incelenen =
        widget.dava.evidenceList.where((d) => d.isInspected).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('DELİLLER'),
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
                '$incelenen / ${widget.dava.evidenceList.length} delil incelendi',
                style: const TextStyle(color: AppColors.soluk, fontSize: 13),
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 24),
                itemCount: widget.dava.evidenceList.length,
                itemBuilder: (context, index) {
                  final delil = widget.dava.evidenceList[index];
                  return EvidenceCard(
                    delil: delil,
                    onTap: () async {
                      await Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              EvidenceDetailScreen(delil: delil),
                        ),
                      );
                      // Detay ekranindan donunce isInspected degismis olabilir,
                      // listeyi yeniden cizdirmek icin setState cagiriyoruz.
                      setState(() {});
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
