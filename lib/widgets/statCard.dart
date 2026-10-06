import 'package:flutter/material.dart';
import '../helpers/colors.dart';




class AppColors {
  static const primary = Color(0xFFF59E0B); 
  static const light = Color(0xFFF1F5F9);   
}


class StatCardData {
  final String id;
  final String label;
  final String value;
  final double? changePercent; 
  final VoidCallback? onTap;   

  const StatCardData({
    required this.id,
    required this.label,
    required this.value,
    this.changePercent,
    this.onTap,
  });
}


class StatCard extends StatelessWidget {
  final StatCardData data;

  const StatCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final changePercent = data.changePercent;
    final isUp = (changePercent ?? 0) >= 0;

    return Container(
      padding: const EdgeInsets.fromLTRB(16, 14, 14, 16),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top row: label + chevron
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  data.label,
                  style: TextStyle(
                    color: Light.withOpacity(0.85),
                    fontSize: 12.5,
                    fontWeight: FontWeight.w500,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (data.onTap != null)
                InkWell(
                  onTap: data.onTap,
                  borderRadius: BorderRadius.circular(999),
                  child: Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Light.withOpacity(0.5),
                      ),
                    ),
                    child: Icon(
                      Icons.chevron_right,
                      size: 14,
                      color: Light,
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 10),

          // Big value
          Text(
            data.value,
            style: const TextStyle(
              color: AppColors.light,
              fontSize: 26,
              fontWeight: FontWeight.w700,
              height: 1.1,
            ),
          ),

          // Trend pill, only if changePercent was provided
          if (changePercent != null) ...[
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
              decoration: BoxDecoration(
                color: Light.withOpacity(0.18),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    isUp ? Icons.arrow_outward : Icons.south_east,
                    size: 13,
                    color: Light.withOpacity(0.85),
                  ),
                  const SizedBox(width: 2),
                  Text(
                    '${changePercent.abs().toStringAsFixed(0)}%',
                    style: const TextStyle(
                      color: AppColors.light,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

