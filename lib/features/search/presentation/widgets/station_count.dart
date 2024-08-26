import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/station_count/selected_station_count_provider.dart';
import 'station_count_object.dart';

class ContainerColorsNotifier extends StateNotifier<List<Color>> {
  ContainerColorsNotifier() : super(List<Color>.filled(4, const Color(0xFFBCDEC5)));

  void updateColors(int? selectedIndex, BuildContext context) {
    state = List<Color>.filled(4, Theme.of(context).lightGreen);
    if (selectedIndex != null) {
      state[selectedIndex] = Theme.of(context).primaryColor;
    }
  }
}

final containerColorsProvider =
    StateNotifierProvider<ContainerColorsNotifier, List<Color>>((ref) {
  return ContainerColorsNotifier();
});

class StationCount extends ConsumerStatefulWidget {
  const StationCount({super.key});

  @override
  ConsumerState createState() => _StationCountState();
}

class _StationCountState extends ConsumerState<StationCount> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final selectedIndex = ref.read(selectedStationCountProvider);
      ref
          .read(containerColorsProvider.notifier)
          .updateColors(selectedIndex, context);
    });
  }

  void handleTap(int index) {
    ref.read(selectedStationCountProvider.notifier).state = index;
    ref.read(containerColorsProvider.notifier).updateColors(index, context);
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerColors = ref.watch(containerColorsProvider);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.016),
      child: Container(
        padding: EdgeInsets.all(screenSize.height * 0.016),
        decoration: BoxDecoration(
          color: Theme.of(context).moreGrey,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Station Count",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            Divider(color: Theme.of(context).dividerColor),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StationCountObject(
                    index: 0,
                    value: 0,
                    label: "Any",
                    color: containerColors[0],
                    onTap: handleTap,
                  ),
                  StationCountObject(
                    index: 1,
                    value: 2,
                    label: "2+",
                    color: containerColors[1],
                    onTap: handleTap,
                  ),
                  StationCountObject(
                    index: 2,
                    value: 4,
                    label: "4+",
                    color: containerColors[2],
                    onTap: handleTap,
                  ),
                  StationCountObject(
                    index: 3,
                    value: 6,
                    label: "6+",
                    color: containerColors[3],
                    onTap: handleTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
