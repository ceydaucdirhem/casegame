import 'package:flutter/material.dart';
import '../models/case_file.dart';
import '../models/investigation_note.dart';
import '../theme/app_theme.dart';
import '../widgets/evidence_card.dart';
import '../widgets/suspect_card.dart';
import 'evidence_detail_screen.dart';
import 'suspect_detail_screen.dart';

/// Oyuncunun delilleri, supheli listesini ve kendi notlarini
/// tek ekrandan takip edebilecegi sorusturma panosu.
class InvestigationBoardScreen extends StatefulWidget {
  final CaseFile dava;

  const InvestigationBoardScreen({super.key, required this.dava});

  @override
  State<InvestigationBoardScreen> createState() =>
      _InvestigationBoardScreenState();
}

class _InvestigationBoardScreenState extends State<InvestigationBoardScreen>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  final List<InvestigationNote> _notlar = [];
  final TextEditingController _notController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _notController.dispose();
    super.dispose();
  }

  void _notEkle() {
    final metin = _notController.text.trim();
    if (metin.isEmpty) return;
    setState(() {
      _notlar.insert(
        0,
        InvestigationNote(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          content: metin,
          createdAt: DateTime.now(),
        ),
      );
      _notController.clear();
    });
  }

  void _notSil(String id) {
    setState(() {
      _notlar.removeWhere((not) => not.id == id);
    });
  }

  String _saatFormatla(DateTime tarih) {
    final saat = tarih.hour.toString().padLeft(2, '0');
    final dakika = tarih.minute.toString().padLeft(2, '0');
    return '$saat:$dakika';
  }

  @override
  Widget build(BuildContext context) {
    final incelenen =
        widget.dava.evidenceList.where((d) => d.isInspected).length;

    return Scaffold(
      appBar: AppBar(
        title: const Text('SORUŞTURMA PANOSU'),
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: AppColors.acikBordo,
          labelColor: AppColors.krem,
          unselectedLabelColor: AppColors.soluk,
          labelStyle:
              const TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
          tabs: [
            Tab(text: 'DELİLLER ($incelenen/${widget.dava.evidenceList.length})'),
            Tab(text: 'ŞÜPHELİLER (${widget.dava.suspects.length})'),
            Tab(text: 'NOTLARIM (${_notlar.length})'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // --- Deliller sekmesi ---
          ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: widget.dava.evidenceList.length,
            itemBuilder: (context, index) {
              final delil = widget.dava.evidenceList[index];
              return EvidenceCard(
                delil: delil,
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => EvidenceDetailScreen(delil: delil),
                    ),
                  );
                  setState(() {});
                },
              );
            },
          ),

          // --- Supheliler sekmesi ---
          ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: widget.dava.suspects.length,
            itemBuilder: (context, index) {
              final supheli = widget.dava.suspects[index];
              return SuspectCard(
                supheli: supheli,
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SuspectDetailScreen(
                        caseId: widget.dava.id,
                        supheli: supheli,
                      ),
                    ),
                  );
                },
              );
            },
          ),

          // --- Notlarim sekmesi ---
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                color: AppColors.koyuGri,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _notController,
                        maxLines: 3,
                        minLines: 1,
                        style: const TextStyle(color: AppColors.krem, fontSize: 14),
                        cursorColor: AppColors.acikBordo,
                        decoration: InputDecoration(
                          hintText: 'Bir gözlemini veya şüpheni yaz...',
                          hintStyle: const TextStyle(
                              color: AppColors.soluk, fontSize: 13),
                          filled: true,
                          fillColor: AppColors.siyah,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: AppColors.acikGri),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: AppColors.acikGri),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6),
                            borderSide: const BorderSide(
                                color: AppColors.acikBordo),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    IconButton(
                      onPressed: _notEkle,
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.bordo,
                        foregroundColor: AppColors.krem,
                        padding: const EdgeInsets.all(14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      icon: const Icon(Icons.add, size: 20),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: _notlar.isEmpty
                    ? const Center(
                        child: Padding(
                          padding: EdgeInsets.all(24),
                          child: Text(
                            'Henüz not yok. Dikkatini çeken bir çelişki '
                            'veya ipucu bulduğunda buraya yaz.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: AppColors.soluk, fontSize: 13, height: 1.5),
                          ),
                        ),
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(20),
                        itemCount: _notlar.length,
                        itemBuilder: (context, index) {
                          final not = _notlar[index];
                          return Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(
                              color: AppColors.koyuGri,
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: AppColors.acikGri),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        not.content,
                                        style: const TextStyle(
                                            color: AppColors.krem,
                                            fontSize: 14,
                                            height: 1.5),
                                      ),
                                      const SizedBox(height: 6),
                                      Text(
                                        _saatFormatla(not.createdAt),
                                        style: const TextStyle(
                                            color: AppColors.soluk,
                                            fontSize: 11),
                                      ),
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () => _notSil(not.id),
                                  icon: const Icon(Icons.close,
                                      size: 16, color: AppColors.soluk),
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
