import 'package:ev_charger/features/location/presentation/widgets/charger_tab/port_box.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/repositories/charger/entities/charger_entity.dart'; // Adjust the path accordingly
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';

import '../../../../../shared/core/localization/localization.dart';

class ChargersContent extends ConsumerWidget {
  const ChargersContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;
    final currentLocation = ref.watch(locationProvider);

    return currentLocation.when(
      data: (location) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: screenSize.height * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: List.generate(location.ev_chargers.length, (index) {
              final charger = location.ev_chargers[index];
              return ChargerBox(charger: charger);
            }),
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}

class ChargerBox extends StatelessWidget {
  final ChargerEntity charger;

  const ChargerBox({
    super.key,
    required this.charger,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).stationGrey),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(screenSize.width * 0.025),
            decoration: BoxDecoration(
              color: Theme.of(context).stationGrey,
            ),
            child: Text(
              charger.availability,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 10),
            child: Text(
              AppLocalizations.of(context).translate('Plugs'),
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(fontSize: 14),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenSize.width * 0.025,
                vertical: screenSize.height * 0.015),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: charger.ports.map((port) {
                  return PortBox(port: port);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
