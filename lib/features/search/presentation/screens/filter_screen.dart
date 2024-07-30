import 'package:auto_route/auto_route.dart';
import 'package:ev_charger/features/search/presentation/providers/charge_type/hidden_plugs_provider.dart';
import 'package:ev_charger/features/search/presentation/providers/charge_type/show_incompatible_plugs_provider.dart';
import 'package:ev_charger/features/search/presentation/providers/charge_type/visible_plugs_provider.dart';
import 'package:ev_charger/features/search/presentation/providers/search_bar_and_filter/filter_border_color_provider.dart';
import 'package:ev_charger/shared/presentation/theme/app_theme.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../shared/presentation/widgets/button.dart';
import 'package:ev_charger/features/search/presentation/widgets/widgets.dart';

import '../providers/power_output/power_output_values_provider.dart';
import '../providers/station_count/selected_station_count_provider.dart';
import '../providers/station_count/station_count_value_provider.dart';
import '../widgets/charge_type_object.dart';

import 'package:syncfusion_flutter_sliders/sliders.dart';

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
                      onTap: () async {
                        // Reset Station Count

                        ref.read(selectedStationCountProvider.notifier).state =
                            0;
                        ref.read(stationCountValueProvider.notifier).state = 0;
                        ref
                            .read(containerColorsProvider.notifier)
                            .updateColors(0, context);

                        // Reset Charge Type
                        final visiblePlugsAsyncValue =
                            ref.read(visiblePlugsInitializerProvider);

                        visiblePlugsAsyncValue.when(
                          data: (initialVisiblePlugs) {
                            final resetVisiblePlugs =
                                initialVisiblePlugs.map((plug) {
                              return ChargeTypeObject(
                                chargeType: plug.chargeType,
                                chargePowerType: plug.chargePowerType,
                                isChecked: false,
                              );
                            }).toList();
                            ref.read(visiblePlugsProvider.notifier).state =
                                resetVisiblePlugs;
                          },
                          loading: () => print("Loading visible plugs..."),
                          error: (err, stack) =>
                              print("Error loading visible plugs: $err"),
                        );

                        final hiddenPlugsAsyncValue =
                            ref.read(hiddenPlugsInitializerProvider);
                        hiddenPlugsAsyncValue.when(
                          data: (initialHiddenPlugs) {
                            ref.read(hiddenPlugsProvider.notifier).state =
                                initialHiddenPlugs;
                          },
                          loading: () => print("Loading hidden plugs..."),
                          error: (err, stack) =>
                              print("Error loading hidden plugs: $err"),
                        );

                        ref.read(showIncompatiblePlugsProvider.notifier).state =
                            false;

                        // Reset Power Output
                        ref.read(rangeValuesProvider.notifier).state =
                            SfRangeValues(0, 360);

                        // Reset border color state to null
                        ref.read(FilterBorderColorProvider.notifier).state =
                            null;

                        print("Reset pressed");
                        Navigator.pop(context);
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
                        final selectedStationCount =
                            ref.read(selectedStationCountProvider);
                        print(
                            "Selected Station Count Index: $selectedStationCount");

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
                        ref.read(showIncompatiblePlugsProvider.notifier).state =
                            false;

                        // Update border color state to primary color
                        ref.read(FilterBorderColorProvider.notifier).state =
                            Theme.of(context).primaryColor;

                        print("Apply pressed");
                        Navigator.pop(context);
                      },
                      fillColor: Theme.of(context).primaryColor,
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
