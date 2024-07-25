import 'package:ev_charger/features/search/presentation/providers/charge_type/available_plugs_provider.dart';
import 'package:ev_charger/features/search/presentation/widgets/charge_type_object.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../providers/charge_type/hidden_plugs_provider.dart';
import '../providers/charge_type/show_incompatible_plugs_provider.dart';
import '../providers/charge_type/visible_plugs_provider.dart';

class ChargeType extends ConsumerStatefulWidget {
  const ChargeType({super.key});

  @override
  ConsumerState<ChargeType> createState() => _ChargeTypeState();
}

class _ChargeTypeState extends ConsumerState<ChargeType> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final visiblePlugs = ref.watch(visiblePlugsProvider);
    final hiddenPlugs = ref.watch(hiddenPlugsProvider);
    final showIncompatiblePlugs = ref.watch(showIncompatiblePlugsProvider);

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
                  "Charge Type",
                  style: Theme.of(context).textTheme.displaySmall,
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            Container(
              padding: EdgeInsets.only(left: screenSize.width * 0.022),
              child: Column(children: visiblePlugs),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  final currentState =
                      ref.read(showIncompatiblePlugsProvider.notifier).state;
                  ref.read(showIncompatiblePlugsProvider.notifier).state =
                      !currentState;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Show incompatible Plugs",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  Icon(
                    showIncompatiblePlugs
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                    size: 24,
                  ),
                ],
              ),
            ),
            // Conditional Rendering
            if (showIncompatiblePlugs)
              Container(
                  padding: EdgeInsets.only(left: screenSize.width * 0.022),
                  child: Column(children: hiddenPlugs)),
          ],
        ),
      ),
    );
  }
}
