import 'package:ev_charger/features/search/presentation/providers/station_count/station_count_value_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StationCountObject extends ConsumerWidget {
  final int index;
  final int value;
  final String label;
  final Color color;
  final Function(int) onTap;

  const StationCountObject({
    required this.index,
    required this.value,
    required this.label,
    required this.color,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        onTap(index);
        ref.read(stationCountValueProvider.notifier).state = value;
      },
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: const Color(0xFF323842),
          ),
        ),
        width: MediaQuery.of(context).size.width * 0.18,
        height: MediaQuery.of(context).size.height * 0.044,
        child: Center(
          child: Text(label, style: Theme.of(context).textTheme.bodySmall),
        ),
      ),
    );
  }
}
