import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/providers/charge_type/hidden_plugs_provider.dart';
import 'package:ev_charger/features/search/presentation/providers/charge_type/visible_plugs_provider.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/presentation/widgets/button.dart';
import 'package:ev_charger/features/search/presentation/widgets/widgets.dart';

import '../widgets/charge_type_object.dart';

@RoutePage()
class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({super.key});

  @override
  ConsumerState createState() => _FilterScreenState();
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Padding(
          padding: EdgeInsets.only(
            top: screenSize.height * 0.05,
            left: screenSize.width * 0.05,
            right: screenSize.width * 0.05,
          ),
          child: Row(
            children: [
              IconButton(
                icon: SvgPicture.asset('assets/icons/close_icon.svg'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              Text(
                'Filter',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: screenSize.width * 0.075,
            right: screenSize.width * 0.075,
            top: screenSize.height * 0.01,
            bottom: screenSize.height * 0.03,
          ),
          child: Column(
            children: [
              // station count
              const StationCount(),

              // charge type
              const ChargeType(),

              // Power Output
              const PowerOutput(),

              // buttons "reset" and "apply filter"
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: screenSize.height * 0.016),
                child: Row(
                  children: [
                    // Reset button
                    Button(
                      onTap: () {
                        print("Reset pressed");
                      },
                      fillColor: Theme.of(context).lightGreen,
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.24,
                      child: Text(
                        "Reset",
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 18,
                          fontFamily: 'Exo',
                        ),
                      ),
                    ),

                    SizedBox(
                      width: screenSize.width * 0.04,
                    ),

                    // Apply Filter button
                    Button(
                      onTap: () {
                        final currentStateVisiblePlugs =
                            ref.read(visiblePlugsProvider);
                        final currentStateHiddenPlugs =
                            ref.read(hiddenPlugsProvider);

                        final movingToHidden = currentStateVisiblePlugs
                            .where((plug) => !plug.isChecked)
                            .toList();
                        final remainingVisible = currentStateVisiblePlugs
                            .where((plug) => plug.isChecked)
                            .toList();
                        final movingToVisible = currentStateHiddenPlugs
                            .where((plug) => plug.isChecked)
                            .toList();
                        final remainingHidden = currentStateHiddenPlugs
                            .where((plug) => !plug.isChecked)
                            .toList();

                        // Combine lists appropriately, ensuring no duplicates
                        final updatedVisiblePlugs =
                            List<ChargeTypeObject>.from(remainingVisible)
                              ..addAll(movingToVisible);
                        final updatedHiddenPlugs =
                            List<ChargeTypeObject>.from(remainingHidden)
                              ..addAll(movingToHidden);

                        // Sort the lists based on chargeType and then chargePowerType
                        updatedVisiblePlugs.sort((a, b) {
                          int compareChargeType =
                              a.chargeType.compareTo(b.chargeType);
                          if (compareChargeType != 0) return compareChargeType;
                          return a.chargePowerType.compareTo(b.chargePowerType);
                        });
                        updatedHiddenPlugs.sort((a, b) {
                          int compareChargeType =
                              a.chargeType.compareTo(b.chargeType);
                          if (compareChargeType != 0) return compareChargeType;
                          return a.chargePowerType.compareTo(b.chargePowerType);
                        });

                        // Update providers with the new lists, converting to sets and back to lists to remove duplicates
                        ref.read(visiblePlugsProvider.notifier).state =
                            updatedVisiblePlugs.toSet().toList();
                        ref.read(hiddenPlugsProvider.notifier).state =
                            updatedHiddenPlugs.toSet().toList();

                        print("Apply pressed");
                      },
                      fillColor: Color(0xFF34A853),
                      border: false,
                      shadow: true,
                      shadowOpacity: 0.34,
                      child: Text(
                        "Apply Filter",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.secondary,
                          fontSize: 18,
                          fontFamily: 'Exo',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
