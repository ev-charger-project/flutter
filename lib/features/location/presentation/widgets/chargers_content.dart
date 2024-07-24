import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ev_charger/repositories/charger/entities/charger_entity.dart'; // Adjust the path accordingly
import 'package:ev_charger/shared/domain/providers/location/location_provider.dart';

class ChargersContent extends ConsumerWidget {
  const ChargersContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocation = ref.watch(locationProvider);

    return currentLocation.when(
      data: (location) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
            List.generate(location.ev_chargers.length, (index) {
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
    Key? key,
    required this.charger,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Theme.of(context).stationGrey,

            ),
            child: Text(
              charger.station_name,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Plugs',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: charger.ports.map((port) {
                return PortBox(port: port);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class PortBox extends StatelessWidget {
  final Port port;

  const PortBox({
    Key? key,
    required this.port,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.electric_car, size: 24),
          const SizedBox(height: 8),
          Text(
            port.power_plug_type.plugType,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
