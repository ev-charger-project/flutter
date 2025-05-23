import 'package:ev_charger/shared/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_core/theme.dart';

import '../providers/power_output/power_output_values_provider.dart';
import '../../../../shared/core/localization/localization.dart';

class PowerOutput extends ConsumerStatefulWidget {
  const PowerOutput({super.key});

  @override
  ConsumerState createState() => _PowerOutputState();
}

class _PowerOutputState extends ConsumerState<PowerOutput> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    // Watch for changes in the range values
    var currentRangeValues = ref.watch(rangeValuesProvider);

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
                  AppLocalizations.of(context).translate("Power Output "),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  "(${currentRangeValues.start.round()} kW - ${currentRangeValues.end.round()} kW)",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            SfRangeSliderTheme(
              data: SfRangeSliderThemeData(
                  activeTrackColor: Theme.of(context).primaryColor,
                  inactiveTrackColor: Theme.of(context).lightLimeGreen,
                  thumbColor: Theme.of(context).colorScheme.secondary,
                  thumbStrokeColor: Theme.of(context).primaryColor,
                  thumbStrokeWidth: 2,
                  tooltipBackgroundColor: Theme.of(context).primaryColor,
                  tooltipTextStyle:
                      TextStyle(color: Theme.of(context).colorScheme.secondary),
                  activeLabelStyle: Theme.of(context).textTheme.bodySmall),
              child: SfRangeSlider(
                min: 0,
                max: 360,
                values: currentRangeValues,
                showLabels: true,
                interval: 60,
                enableTooltip: true,
                tooltipTextFormatterCallback:
                    (dynamic actualValue, String formattedText) {
                  return actualValue.round().toString();
                },
                onChanged: (dynamic values) {
                  setState(() {
                    currentRangeValues = SfRangeValues(
                        values.start.roundToDouble(),
                        values.end.roundToDouble());
                  });
                  ref.read(rangeValuesProvider.notifier).state = SfRangeValues(
                      values.start.roundToDouble(), values.end.roundToDouble());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
