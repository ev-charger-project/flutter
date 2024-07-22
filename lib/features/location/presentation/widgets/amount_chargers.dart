import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../shared/domain/providers/location/location_provider.dart';

class ChargerNum extends ConsumerWidget {
  const ChargerNum({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chargersAsyncValue = ref.watch(locationProvider);

    return chargersAsyncValue.when(
      data: (locationEntity) {
        final chargers = locationEntity.ev_chargers.length;
        final Set<String> uniquePorts = {};
        for (var charger in locationEntity.ev_chargers) {
          for (var port in charger.ports) {
            uniquePorts.add('${port.power_plug_type.plugType}-${port.power_plug_type.powerModel}');
          }
        }
        final int uniquePortCount = uniquePorts.length;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  uniquePortCount,
                      (index) => Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: SvgPicture.asset('assets/icons/charger_icon.svg'),
                  ),
                ),
              ),
              Text(
                '$chargers chargers',
                style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        print('Error: $error');
        return Center(child: Text('Error: $error'));
      },
    );
  }
}
