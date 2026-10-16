import 'package:flutter/material.dart';
import '../models/evidence.dart';
import '../theme/app_theme.dart';

/// Tek bir delilin detayini gosteren ekran.
class EvidenceDetailScreen extends StatefulWidget {
  final Evidence delil;

  const EvidenceDetailScreen({super.key, required this.delil});

  @override
  State<EvidenceDetailScreen> createState() => _EvidenceDetailScreenState();
}

class _EvidenceDetailScreenState extends State<EvidenceDetailScreen> {
  @override
  void initState() {
    super.initState();
    // Ekran acildigi an delili "incelendi" olarak isaretliyoruz.
    widget.delil.isInspected = true;
  }

  Color _onemRengi() {
    switch (widget.delil.importance) {
      case 'Yüksek':
        return AppColors.acikBordo;
      case 'Düşük':
        return AppColors.soluk;
      default:
        return AppColors.koyuMor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final delil = widget.delil;
    return Scaffold(
      appBar: AppBar(
        title: Text(delil.id.toUpperCase()),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: _onemRengi(),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    delil.type,
                    style: const TextStyle(
                      color: AppColors.krem,
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  'Önem: ${delil.importance}',
                  style: const TextStyle(color: AppColors.soluk, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              delil.title,
              style: const TextStyle(
                color: AppColors.krem,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.place_outlined,
                    size: 14, color: AppColors.soluk),
                const SizedBox(width: 6),
                Text(
                  'Bulunduğu yer: ${delil.discoveredAt}',
                  style: const TextStyle(color: AppColors.soluk, fontSize: 12),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.koyuGri,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: AppColors.acikGri),
              ),
              child: Text(
                delil.description,
                style: const TextStyle(
                  color: AppColors.krem,
                  fontSize: 14,
                  height: 1.7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
