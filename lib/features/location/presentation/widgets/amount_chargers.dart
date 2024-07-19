import 'package:ev_charger/shared/domain/providers/location/current_location_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../shared/domain/providers/charger/charger_provider.dart';

class ChargerNum extends ConsumerWidget {
  const ChargerNum({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    // return chargersAsyncValue.when(
    //   data: (locationEntity) {
    //     final chargers = locationEntity.ev_chargers.length;
    //     var ports = locationEntity.ev_chargers.fold<int>(
    //         0, (sum, charger) => sum + charger.ports.length);
    //     if (ports >5){
    //       ports =5;
    //     }
    //     return Container(
    //       padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.015),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           Row(
    //             children: List.generate(
    //               ports,
    //                   (index) => Padding(
    //                 padding: const EdgeInsets.all(2.5),
    //                 child: SvgPicture.asset('assets/icons/charger_icon.svg'),
    //               ),
    //             ),
    //           ),
    //           // Row(
    //           //   children: [
    //           //     SvgPicture.asset('assets/icons/charger_icon.svg'),
    //           //     Text(
    //           //       ' x $ports',
    //           //       style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
    //           //       ),
    //           //       textAlign: TextAlign.left,
    //           //     ),
    //           //   ],
    //           // ),
    //           Text(
    //             '$chargers chargers',
    //             style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(
    //             ),
    //             textAlign: TextAlign.left,
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    //   loading: () => const Center(child: CircularProgressIndicator()),
    //   error: (error, stack) => Center(child: Text('Error: $error')),
    // );
    return SizedBox();
  }
}
