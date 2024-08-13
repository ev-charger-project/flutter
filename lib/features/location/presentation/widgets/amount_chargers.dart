import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../repositories/charger/entities/charger_entity.dart';
import '../../../../shared/core/localization/localization.dart';
import '../../../../shared/domain/providers/location/location_provider.dart';
import 'charger_tab/port_box.dart';

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
        final Set<String> uniquePortIdentifiers = {};
        final List<Port> uniquePorts = [];

        for (var charger in locationEntity.ev_chargers) {
          for (var port in charger.ports) {
            final identifier = '${port.power_plug_type.powerModel}-${port.power_plug_type.plugType}';
            if (!uniquePortIdentifiers.contains(identifier)) {
              uniquePortIdentifiers.add(identifier);
              uniquePorts.add(port);
            }
          }
        }

        return Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.015),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: List.generate(
                  uniquePorts.length,
                      (index) => Padding(
                    padding: const EdgeInsets.all(2.5),
                    child: SizedBox(
                      width: 20,
                      child: Column(
                        children: [
                          // Text('${uniquePorts[index].power_model.outputValue.floor()} kW', style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 10),),
                          (uniquePorts[index].power_plug_type.plugImage != null && isValidUrl(uniquePorts[index].power_plug_type.plugImage!))
                              ? Image.network(
                              "http://172.16.11.139:14000/api/v1/media/${uniquePorts[index].power_plug_type.plugImage!}")
                              : SvgPicture.asset('assets/icons/plug_icon.svg')
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                '$chargers ${AppLocalizations.of(context).translate('Chargers')}',
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
